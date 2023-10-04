import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{

  final String text;
  final VoidCallback onPress;
  final Color? textColor,color;

  const RoundedButton({
    super.key,
    required this.text,
    this.textColor,
    this.color,
    required this.onPress
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.8,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
        child: MaterialButton(
          onPressed: onPress,
          child: Text(
            text,
            style: TextStyle(
                color: textColor??Colors.white
            ),
          ),
          color: color??Theme.of(context).colorScheme.primary,
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
        ),
      ),
    );
  }
}