import 'package:first/widgets/check_box.dart';
import 'package:flutter/material.dart';


// Widget buildCheckBoxes() {
//     List<String> allergies = [
//       'None',
//       'Cereals containing gluten',
//       'Eggs',
//       'Fish',
//       'Milk',
//       'Soy',
//       'Nuts',
//     ];

//     return Column(
//       children: allergies.map((allergy) {
//         return Padding(
//           padding: const EdgeInsets.only(left: 40),
//           child: CustomCheckBox(
//             name: allergy,
//             isChecked: selectedAllergies.contains(allergy),
//             onChanged: (isChecked) {
//               toggleAllergy(allergy);
//             },
//           ),
//         );
//       }).toList(),
//     );
//   }
// }