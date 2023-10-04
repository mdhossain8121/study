import 'package:flutter/material.dart';

class NoDataFound extends StatelessWidget{

  final String? message;
  final Color? color;

  const NoDataFound({
    super.key,
    this.message,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      message??"No Data Found",
      style: TextStyle(
        color: color ?? Colors.red
      ),
    );
  }

}