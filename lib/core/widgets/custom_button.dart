import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.borderRadius,
    required this.backgroundColor,
    required this.textColor,
  });
  final String text;
  final BorderRadius? borderRadius;
  final Color backgroundColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            ),
            backgroundColor: backgroundColor,
          ),
          child: Text(
            text,
            style: Styles.textStyle16
                .copyWith(color: textColor, fontWeight: FontWeight.w900),
          )),
    );
  }
}
