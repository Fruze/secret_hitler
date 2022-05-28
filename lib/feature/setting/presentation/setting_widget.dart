import 'package:flutter/material.dart';
import 'package:secret_hitler/common/style/style_bold_text.dart';

class SettingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: null,
        body: Center(
            child: Column(
              children: const [
                Text("About Us",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold
                  ),),
                Text("Secret Hitler Game"
                  , style: TextStyle(
                      color: Colors.black54,
                      fontSize: 28,
                      fontWeight: FontWeight.normal
                  ),),
                Text("Designed by:"),
                Text("Andrea"),
                Text("Felix"),
                Text("Jonathan"),
              ],
            )
        ),
      ),
    );
  }
}
