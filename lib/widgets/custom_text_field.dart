import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxlines = 1});
  final String hintText;
  final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlines,
      cursorColor: Colors.cyan,
      decoration: InputDecoration(
        // contentPadding: padding,
        enabledBorder: buildBorder(Colors.white),
        focusedBorder: buildBorder(Colors.cyan),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.cyan,
        ),
      ),
    );
  }
// Make it Method Because i used it two times to control shape of text field
  OutlineInputBorder buildBorder(color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: color),
    );
  }
}
