import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget{

  final bool login;
  final VoidCallback onPress;

  const AlreadyHaveAnAccountCheck({
    super.key,
    required this.login,
    required this.onPress
  });


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login?"Don't have an account? " : "Already have an account? ",
          style: TextStyle(
              color: Theme.of(context).primaryColor
          ),
        ),
        GestureDetector(
          onTap: onPress,
          child: Text(
            login? "Sign Up": "Sign In",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
}