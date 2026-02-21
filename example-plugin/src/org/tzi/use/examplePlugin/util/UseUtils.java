package org.tzi.use.examplePlugin.util;

import org.tzi.use.examplePlugin.ast.ASTInterface;
import org.tzi.use.examplePlugin.parser.CAPCompiler;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import java.util.Map;

import static org.tzi.use.examplePlugin.metamodel.CommonAttributes.CHECK_FOR_EXI;

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

  public static boolean hasKeyInCheckForExi(ASTInterface astInterface, List<String> key) {

    Object raw = astInterface.args.get(CHECK_FOR_EXI);

    if (!(raw instanceof List<?> list)) {
      return false;
    }
    for (Object o : list) {
      if (!(o instanceof ASTInterface cond)) {
        continue;
      }
      Map<String, Object> args = cond.args;
      if (args == null) {
        continue;
      }
      for (String k : key) {
        if (args.containsKey(k)) {
          return true;
        }
      }
    }
    return false;
  }

  /**
   * Check if any of the keys in the list exists in the specific conditions
   * Check for key in ifPart, checkForExi... and whatever conditions that we will have in the future
   * @param astInterface
   * @param key
   * @return
   */
  public static boolean hasKeyIn(ASTInterface astInterface, List<String> key, String conditionKey) {

    Object raw = astInterface.args.get(conditionKey);

    if (raw == null) {
      System.out.println("Condition key '" + conditionKey + "' does not exist in args.");
      return false;
    }

    if (!(raw instanceof List<?> list)) {
      return false;
    }
    for (Object o : list) {
      if (!(o instanceof ASTInterface cond)) {
        continue;
      }
      Map<String, Object> args = cond.args;
      if (args == null) {
        continue;
      }
      for (String k : key) {
        if (args.containsKey(k)) {
          return true;
        }
      }
    }
    return false;
  }
}
