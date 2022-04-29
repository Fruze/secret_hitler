import 'package:flutter/material.dart';

class StyleBoldText extends TextStyle {
  const StyleBoldText({double? fontSize})
      : super(
          inherit: false,
          fontSize: fontSize ?? 32.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        );
}
