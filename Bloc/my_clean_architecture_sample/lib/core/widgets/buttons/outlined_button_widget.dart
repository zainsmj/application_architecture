import 'package:my_clean_architecture_sample/core/config/themes/styles/button_theme_styles.dart';
import 'package:flutter/material.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final String buttonLabel;
  final Function() onPressed;

  const OutlinedButtonWidget({
    required this.buttonLabel,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonThemeStyles.outlinedButtonTheme.style,
      onPressed: onPressed,
      child: Text(buttonLabel),
    );
  }
}
