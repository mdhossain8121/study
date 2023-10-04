import 'package:flutter/material.dart';

import 'social_icon.dart';
import 'or_divider.dart';

class SocialIcons extends StatelessWidget{

  const SocialIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrDivider(),

        Text(
          "One tap Sign In or Sign Up",
          style: TextStyle(
              color: Theme.of(context).primaryColor
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialIcon(
              imageSrc: 'assets/images/google.svg',
              padding: 10,
            ),
            SocialIcon(
              imageSrc: 'assets/images/facebook.svg',
              padding: 15,
            )
          ],
        ),
      ],
    );
  }
}