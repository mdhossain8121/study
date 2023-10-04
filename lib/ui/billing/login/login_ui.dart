import 'package:flutter/material.dart';

class LoginUi extends StatelessWidget{
  const LoginUi({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: (
            Column(
              children: [
                Text("test")
              ],
            )
          ),
        ),
      ),
    );
  }
}