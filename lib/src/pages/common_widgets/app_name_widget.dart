import 'package:flutter/material.dart';
import 'package:geekshop/src/config/custom_colors.dart';

class AppNameWidget extends StatelessWidget {
  final Color? greenTitleColor;
  final double textSize;

  const AppNameWidget({
    Key? key,
    this.greenTitleColor,
    this.textSize = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(
          fontSize: textSize,
        ),
        children: [
          TextSpan(
            text: 'Geek',
            style: TextStyle(
              color: greenTitleColor ?? Colors.deepPurple,
            ),
          ),
          const TextSpan(
            text: 'Shop',
            style: TextStyle(
              color: Color.fromARGB(255, 238, 192, 52),
            ),
          ),
        ],
      ),
    );
  }
}
