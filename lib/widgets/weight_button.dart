import 'package:flutter/cupertino.dart';

class WeightButton extends StatefulWidget {
  const WeightButton({super.key});

  @override
  _WeightButton createState() => _WeightButton();
}

class _WeightButton extends State<WeightButton> {
  int _selectedSegment = 0;

  @override
  Widget build(context) {
    return Center(
      child: CupertinoSlidingSegmentedControl<int>(
        groupValue: _selectedSegment,
        thumbColor: const Color.fromARGB(255, 0, 187, 24),
        backgroundColor: const Color.fromARGB(255, 217, 217, 217),
        onValueChanged: (value) {
          setState(() {
            _selectedSegment = value!;
          });
        },
        children: const {
          0: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'KG',
              style: TextStyle(color: CupertinoColors.white),
            ),
          ),
          1: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'LB',
              style: TextStyle(color: CupertinoColors.white),
            ),
          ),
        },
      ),
    );
  }
}
