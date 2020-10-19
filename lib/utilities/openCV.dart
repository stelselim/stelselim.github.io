import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:url_launcher/url_launcher.dart';

openCV() async {
  try {
    await OpenFile.open(
      "mycv.pdf",
      type: ".pdf",
      uti: "application/pdf",
    );
  } catch (e) {
    print(e);
  }
}
