import 'package:debug_print_logger/src/constants/color_codes.dart';
import 'package:debug_print_logger/src/constants/enum.dart';
import 'package:flutter/material.dart';

class DebugPrintLogger {
  final Layer layer;
  final String identifier;

  DebugPrintLogger({required this.layer, required this.identifier});

  void print(String callerName, String variableName, dynamic variable,
      {bool isError = false}) {
    if (variable != null) {
      String value =
          '$identifier.$callerName - $variableName = ${variable.toString()}';
      if (isError) {
        debugPrint(getColoredString(getColorName(Layer.ERROR), value));
      } else {
        debugPrint(getColoredString(getColorName(layer), value));
      }
    } else {
      String value = '$identifier.$callerName - $variableName = NULL';
      if (isError) {
        debugPrint(getColoredString(getColorName(Layer.ERROR), value));
      } else {
        debugPrint(getColoredString(getColorName(layer), value));
      }
    }
  }
}

String getColoredString(String colorName, String text) {
  return ANSI_COLOR_CODES[colorName]! + text + ANSI_COLOR_CODES['reset']!;
}

String getColorName(Layer layer) {
  return LAYER_TO_COLOR_MAP[layer];
}
