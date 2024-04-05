import 'package:flutter/material.dart';
import '../app_styles.dart'; // Correct import path for app_styles.dart
import '../size_configs.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,
    required this.buttonName,
    required this.onPressed,
    required this.bgColor,
  }) : super(key: key);

  final String buttonName;
  final VoidCallback onPressed;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); // Initialize SizeConfig

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
      ),
      child: SizedBox(
        height: SizeConfig.blockSizeH! * 14,
        width: SizeConfig.blockSizeH! * 100,
        child: TextButton(
          onPressed: onPressed,
          child: Text(
            buttonName,
            style: kBodyText1, // Use correct style from app_styles.dart
          ),
          style: TextButton.styleFrom(
            backgroundColor: bgColor,
          ),
        ),
      ),
    );
  }
}
