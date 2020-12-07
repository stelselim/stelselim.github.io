import 'package:flutter/material.dart';

bool checkMobile(BuildContext context) {
  if (MediaQuery.of(context).size.width > 600) {
    return false;
  } else {
    return true;
  }
}
