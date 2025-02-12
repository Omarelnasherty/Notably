import 'package:flutter/material.dart';

class custom_text_field extends StatelessWidget {
  const custom_text_field({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;

  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Empty';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          hintText: hint,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.white),
          )),
    );
  }
}
