import 'package:flutter/material.dart';
import 'package:study/ui/study/components/text_field_container.dart';

class CustomTextField extends StatelessWidget{

  final String hintText;
  final IconData? icon;
  final ValueChanged<String> onChanged;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.icon,
    required this.onChanged
  });


  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(icon),
          border: InputBorder.none,
          hintText: hintText
        ),
      ),
    );
  }
}