import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class CustomNumberPicker extends StatefulWidget {
  final int initialValue;
  final Function(int) onValueChanged;

  CustomNumberPicker({
    required this.initialValue,
    required this.onValueChanged,
  });

  @override
  _CustomNumberPickerState createState() => _CustomNumberPickerState();
}

class _CustomNumberPickerState extends State<CustomNumberPicker> {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      value: _currentValue,
      minValue: 0,
      maxValue: 200,
      haptics: true,
      textStyle: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ), // Bold text style
      onChanged: (newValue) {
        setState(() {
          _currentValue = newValue;
        });
        widget.onValueChanged(newValue);
      },
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.green),
      ),
    );
  }
}
