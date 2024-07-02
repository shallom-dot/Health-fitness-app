import 'package:flutter/material.dart';

class OnboardingReUsableButtons extends StatelessWidget {
  const OnboardingReUsableButtons({
    super.key,
    required this.text,
    this.url = '',
    required this.press,
    this.color = Colors.white,
    this.textColor = Colors.black,
    this.spacing = 8.0,
  });

  final String text;
  final String url;
  final VoidCallback press;
  final Color color;
  final Color textColor;
  final double spacing;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: color,
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(color: Colors.grey),
            ),
          ),
          onPressed: press,
           child: Stack(
            children: [
              if (url.isNotEmpty)
                Positioned(
                  left: 0,
                  child: Padding(
                    padding: EdgeInsets.only(right: spacing),
                    child: Image.asset(
                      url,
                      height: 24.0,
                    ),
                  ),
                ),
              Center(
                child: Text(
                  text,
                  style: TextStyle(color: textColor, fontSize: 16.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
