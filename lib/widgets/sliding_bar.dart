import 'package:flutter/material.dart';

class SlidableSquareSelector extends StatefulWidget {
  const SlidableSquareSelector({super.key});
  @override
  _SlidableSquareSelectorState createState() => _SlidableSquareSelectorState();
}

class _SlidableSquareSelectorState extends State<SlidableSquareSelector> {
  final PageController _pageController = PageController();
  int selectedSquare = 1;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          setState(() {
            selectedSquare = page + 1;
          });
        },
        children: [
          buildSquare(1),
          buildSquare(2),
          buildSquare(3),
        ],
      ),
    );
  }

  Widget buildSquare(int squareNumber) {
    bool isSelected = selectedSquare == squareNumber;

    return Container(
      width: 50.0,
      height: 50.0,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      color: isSelected ? Colors.blue : Colors.grey,
      child: Center(
        child: Text(
          squareNumber.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
