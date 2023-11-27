//import 'package:flutter/material.dart';
//import 'package:first/style_text.dart';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(DatePickerApp());
// }

// class DatePickerApp extends StatelessWidget {
//   const DatePickerApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const CupertinoApp(
//       theme: CupertinoThemeData(brightness: Brightness.light),
//       home: DatePickerExample(),
//     );
//   }
// }

// class DatePickerExample extends StatefulWidget {
//   const DatePickerExample({Key? key}) : super(key: key);

//   @override
//   State<DatePickerExample> createState() => _DatePickerExampleState();
// }

// class _DatePickerExampleState extends State<DatePickerExample> {
//   double selectedHeight = 160.0; // Initial height

//   // This function displays a CupertinoModalPopup with a reasonable fixed height
//   // which hosts a custom height picker.
//   void _showDialog(Widget child) {
//     showCupertinoModalPopup<void>(
//       context: context,
//       builder: (BuildContext context) => Container(
//         height: 216,
//         padding: const EdgeInsets.only(top: 6.0),
//         // The Bottom margin is provided to align the popup above the system
//         // navigation bar.
//         margin: EdgeInsets.only(
//           bottom: MediaQuery.of(context).viewInsets.bottom,
//         ),
//         // Provide a background color for the popup.
//         color: CupertinoColors.systemBackground.resolveFrom(context),
//         // Use a SafeArea widget to avoid system overlaps.
//         child: SafeArea(
//           top: false,
//           child: child,
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: const CupertinoNavigationBar(
//         middle: Text('Height Selector'),
//       ),
//       child: DefaultTextStyle(
//         style: TextStyle(
//           color: CupertinoColors.label.resolveFrom(context),
//           fontSize: 22.0,
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               _DatePickerItem(
//                 children: <Widget>[
//                   const Text('Height'),
//                   CupertinoButton(
//                     // Display a custom height picker.
//                     onPressed: () => _showDialog(
//                       CupertinoPicker(
//                         itemExtent: 32.0,
//                         onSelectedItemChanged: (int index) {
//                           setState(() {
//                             selectedHeight = 100.0 + index * 5.0; // Adjust as needed
//                           });
//                         },
//                         children: List.generate(
//                           101, // Number of height options
//                           (index) => Center(
//                             child: Text(
//                               '${100 + index * 5} cm',
//                               style: const TextStyle(fontSize: 20.0),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     child: Text(
//                       '${selectedHeight.toStringAsFixed(1)} cm',
//                       style: const TextStyle(
//                         fontSize: 22.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // This class simply decorates a row of widgets.
// class _DatePickerItem extends StatelessWidget {
//   const _DatePickerItem({required this.children});

//   final List<Widget> children;

//   @override
//   Widget build(BuildContext context) {
//     return DecoratedBox(
//       decoration: const BoxDecoration(
//         border: Border(
//           top: BorderSide(
//             color: CupertinoColors.inactiveGray,
//             width: 0.0,
//           ),
//           bottom: BorderSide(
//             color: CupertinoColors.inactiveGray,
//             width: 0.0,
//           ),
//         ),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: children,
//         ),
//       ),
//     );
//   }
// }






