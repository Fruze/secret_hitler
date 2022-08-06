import 'package:flutter/material.dart';
import 'package:secret_hitler/common/style/style_bold_text.dart';
import 'package:secret_hitler/common/style/style_normal_text.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Secret Hitler",
          style: StyleBoldText(),
        ),
        const Text(
          "Insert your name",
          style: StyleNormalText(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                color: Colors.grey,
                child: const Text(
                  "Create game",
                  style: StyleNormalText(),
                ),
              ),
            ),
            GestureDetector(
              child: Container(
                color: Colors.grey,
                child: const Text(
                  "Join game",
                  style: StyleNormalText(),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
