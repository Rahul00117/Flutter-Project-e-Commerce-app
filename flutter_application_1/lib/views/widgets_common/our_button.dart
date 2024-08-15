// import 'package:e_flutter/consts/consts.dart';

// Widget ourButton({onPress, color, textColor, title}) {
//   return ElevatedButton(
//     style: ElevatedButton.styleFrom(
//       backgroundColor: color, // Make sure redColor is defined
//       padding: const EdgeInsets.all(12),
//     ),
//     onPressed: () {
//       onPress;
//     },
//     child: title.text
//         .color(textColor)
//         .fontFamily(bold)
//         .make(), // Ensure login is a String and bold is defined
//   );
// }
import 'package:project_1/consts/consts.dart';

Widget ourButton({
  onPress, // Explicit type for onPress
  color, // Explicit type for color
  textColor, // Explicit type for textColor
  String? title, // Explicit type for title
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color, // Ensure redColor is defined in consts.dart
      padding: const EdgeInsets.all(12),
    ),
    onPressed: onPress, // Corrected to actually call the function
    child: title!.text
        .color(textColor)
        .fontFamily(bold) // Ensure bold is defined
        .make(), // Ensure title is a String
  );
}
