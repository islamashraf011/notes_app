import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      this.maxlines = 1,
      this.onSaved,
      this.onChanged});
  final String hintText;
  final int maxlines;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        //don't use ! becuase i'm not sure it is = null
        //so here i check if value empty / null = true
        //?? :-  null check operator
        if (value?.isEmpty ?? true) {
          return "Field is required ";
        } else {
          return null;
          //means no problems
        }
      },
      maxLines: maxlines,
      cursorColor: Colors.cyan,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
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
