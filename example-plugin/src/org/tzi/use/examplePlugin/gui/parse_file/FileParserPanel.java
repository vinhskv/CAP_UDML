package org.tzi.use.examplePlugin.gui.parse_file;

import javax.swing.*;
import java.awt.*;
import java.io.*;

public class FileParserPanel extends JPanel {

  private JTextArea leftTextArea;
  private JTextArea rightTextArea;

  private File inputFile;
  private File outputFile;

  public FileParserPanel() {
    initUI();
  }

  private void initUI() {
    setLayout(new BorderLayout(8, 8));

    Font textFont = new Font(Font.MONOSPACED, Font.PLAIN, 14);

    // ===== LEFT TEXT AREA =====
    leftTextArea = new JTextArea();
    leftTextArea.setFont(textFont);
    leftTextArea.setEditable(false);

    JScrollPane leftScroll = new JScrollPane(leftTextArea);
    leftScroll.setBorder(BorderFactory.createTitledBorder("Input File"));

    JButton uploadButton = new JButton("Upload File");
    JPanel leftPanel = new JPanel(new BorderLayout(5, 5));
    leftPanel.add(uploadButton, BorderLayout.NORTH);
    leftPanel.add(leftScroll, BorderLayout.CENTER);

    uploadButton.addActionListener(e -> uploadFile());

    // ===== RIGHT TEXT AREA =====
    rightTextArea = new JTextArea();
    rightTextArea.setFont(textFont);
    rightTextArea.setEditable(false);

    JScrollPane rightScroll = new JScrollPane(rightTextArea);
    rightScroll.setBorder(BorderFactory.createTitledBorder("Output File"));

    JButton downloadButton = new JButton("Download File");
    JPanel rightPanel = new JPanel(new BorderLayout(5, 5));
    rightPanel.add(rightScroll, BorderLayout.CENTER);
    rightPanel.add(downloadButton, BorderLayout.SOUTH);

    downloadButton.addActionListener(e -> downloadFile());

    // ===== SPLIT PANE =====
    JSplitPane splitPane = new JSplitPane(
        JSplitPane.HORIZONTAL_SPLIT,
        leftPanel,
        rightPanel
    );
    splitPane.setResizeWeight(0.5);     // chia đều khi resize
    splitPane.setContinuousLayout(true);

    // ===== CONVERT BUTTON =====
    JButton convertButton = new JButton("Convert →");
    convertButton.setPreferredSize(new Dimension(120, 40));
    convertButton.addActionListener(e -> convertFile());

    JPanel centerPanel = new JPanel(new FlowLayout(FlowLayout.CENTER));
    centerPanel.add(convertButton);

    // ===== ADD TO MAIN =====
    add(splitPane, BorderLayout.CENTER);
    add(centerPanel, BorderLayout.SOUTH);
  }

  // ===================== ACTIONS =====================

  private void uploadFile() {
    JFileChooser chooser = new JFileChooser();
    int result = chooser.showOpenDialog(this);

    if (result == JFileChooser.APPROVE_OPTION) {
      inputFile = chooser.getSelectedFile();
      leftTextArea.setText(readFile(inputFile));
    }
  }

  private void convertFile() {
    if (inputFile == null) {
      JOptionPane.showMessageDialog(this, "Please upload a file first!");
      return;
    }

    // TODO: Replace this with real convert logic
    String convertedContent = leftTextArea.getText().toUpperCase();

    rightTextArea.setText(convertedContent);

    try {
      outputFile = File.createTempFile("converted_", ".txt");
      try (FileWriter writer = new FileWriter(outputFile)) {
        writer.write(convertedContent);
      }
    } catch (IOException ex) {
      ex.printStackTrace();
    }
  }

  private void downloadFile() {
    if (outputFile == null) {
      JOptionPane.showMessageDialog(this, "No converted file to download!");
      return;
    }

    JFileChooser chooser = new JFileChooser();
    chooser.setSelectedFile(new File("converted.txt"));

    int result = chooser.showSaveDialog(this);
    if (result == JFileChooser.APPROVE_OPTION) {
      File target = chooser.getSelectedFile();
      copyFile(outputFile, target);
    }
  }

  // ===================== UTILS =====================

  private String readFile(File file) {
    StringBuilder sb = new StringBuilder();
    try (BufferedReader br = new BufferedReader(new FileReader(file))) {
      String line;
      while ((line = br.readLine()) != null) {
        sb.append(line).append("\n");
      }
    } catch (IOException e) {
      e.printStackTrace();
    }
    return sb.toString();
  }

  private void copyFile(File source, File dest) {
    try (InputStream in = new FileInputStream(source);
         OutputStream out = new FileOutputStream(dest)) {

      byte[] buffer = new byte[1024];
      int length;
      while ((length = in.read(buffer)) > 0) {
        out.write(buffer, 0, length);
      }

    } catch (IOException e) {
      e.printStackTrace();
    }
  }
}