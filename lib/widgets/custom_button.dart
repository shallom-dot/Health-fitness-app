import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonTitle});

  final String buttonTitle;

  @override
  Widget build(BuildContext context) {

    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      padding: const EdgeInsets.symmetric(vertical: 12),
      foregroundColor: const Color(0xff3D3D3D),
      backgroundColor: const Color(0xffe6e6e6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    );

    return SizedBox(
      width: double.infinity,

      child: ElevatedButton(
        style: style,
        onPressed: () {},
        child: Text(buttonTitle),
      ),
    );
  }
}
