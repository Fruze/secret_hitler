import 'package:flutter/material.dart';

class StyleNormalText extends TextStyle {
  const StyleNormalText({double? fontSize})
      : super(
          inherit: false,
          fontSize: fontSize ?? 16.0,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        );
}
