import 'package:flutter/material.dart';
import 'package:secret_hitler/common/style/style_normal_text.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'Hi this is a Login Page',
          style: StyleNormalText(),
        ),
        Text(
          'Fill me up',
          style: StyleNormalText(),
        ),
      ],
    );
  }
}
