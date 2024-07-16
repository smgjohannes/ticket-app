import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDatePickerField extends StatefulWidget {
  final String labelText;

  const CustomDatePickerField({
    super.key,
    required this.labelText,
  });

  @override
  _CustomDatePickerFieldState createState() => _CustomDatePickerFieldState();
}

class _CustomDatePickerFieldState extends State<CustomDatePickerField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, -3), // shadow at the top
          ),
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 3), // shadow at the bottom
          ),
        ],
      ),
      child: GestureDetector(
        onTap: () async {
          DateTime? pickedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime(2101),
          );
          if (pickedDate != null) {
            setState(() {
              _controller.text = DateFormat('yyyy-MM-dd').format(pickedDate);
            });
          }
        },
        child: AbsorbPointer(
          child: TextFormField(
            controller: _controller,
            readOnly: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              labelText: widget.labelText,
              suffixIcon: const Icon(Icons.calendar_today),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
            ),
          ),
        ),
      ),
    );
  }
}
