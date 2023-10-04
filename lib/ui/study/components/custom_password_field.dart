import 'package:flutter/material.dart';
import 'package:study/ui/study/components/text_field_container.dart';

class CustomPasswordField extends StatelessWidget{

  final String hintText;
  final ValueChanged<String> onChanged;

  const CustomPasswordField({
    super.key,
    required this.hintText,
    required this.onChanged
  });


  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(Icons.lock),
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: Icon(Icons.visibility),
        ),

      ),
    );
  }
}