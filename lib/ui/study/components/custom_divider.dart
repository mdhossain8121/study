import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget{

  final Color? color;

  const CustomDivider({
    super.key,
    this.color
  });


  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Divider(
          color: color ?? Colors.grey,  //?? Colors.grey
        )
    );
  }
}