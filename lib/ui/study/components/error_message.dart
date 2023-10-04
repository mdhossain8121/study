import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget{

  final String? message;
  final Color? color;

  const ErrorMessage({
    super.key,
    this.message,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      message??"Something went wrong",
      style: TextStyle(
        color: color ?? Colors.red
      ),
    );
  }

}