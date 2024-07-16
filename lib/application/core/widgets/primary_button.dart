import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final double width;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = double.infinity, // default to full width
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF4D5DFA),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
