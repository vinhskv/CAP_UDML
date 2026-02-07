package org.tzi.use.examplePlugin.util;

import org.tzi.use.examplePlugin.ast.ASTInterface;
import org.tzi.use.examplePlugin.parser.CAPCompiler;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;

public class UseUtils {
  public static ASTInterface parseASTFromText(String text) {
    PrintWriter err = new PrintWriter(System.err);
    try {
      // 1. Create temp file
      Path tempFile = Files.createTempFile("cap-test-", ".cap");

      // 2. Write annotation to file
      Files.writeString(tempFile, text);

      // 3. Parse via existing compiler
      ASTInterface astInterface =
          CAPCompiler.compileSpecification(tempFile.toString(), err);

      // 4. Optional: delete temp file
      Files.deleteIfExists(tempFile);

      return astInterface;
    } catch (IOException e) {
      throw new RuntimeException(e);
    }
  }

  public static String asString(Object o) {
    return o == null ? null : String.valueOf(o);
  }

  /**
   * Check for has specific key in args
   * @param astInterface
   * @param key
   * @return
   */
  public static boolean hasSpecificKey(ASTInterface astInterface, String key) {
    return astInterface.args.get(key) != null;
  }

  /**
   * Check if value is number
   * @param value the object value
   * @return
   */
  public static boolean isNumber(Object value) {
    if (value == null) return false;
    try {
      Double.parseDouble(value.toString());
      return true;
    } catch (NumberFormatException e) {
      return false;
    }
  }
}
