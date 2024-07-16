import 'package:flutter/material.dart';

class RememberMeCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const RememberMeCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Wrap the Checkbox in a Padding widget
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 8.0), // Adjust padding as needed
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: Colors.blue,
          ),
        ),
        const Text(
          'Remember me',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
