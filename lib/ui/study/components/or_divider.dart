import 'package:flutter/material.dart';

import 'custom_divider.dart';

class OrDivider extends StatelessWidget{
  const OrDivider({super.key});


  
  
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*.6,
      padding: EdgeInsets.symmetric(vertical: size.height*.02),
      child: Row(
        children: [
          CustomDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
                "OR",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w600

              ),
            ),
          ),
          CustomDivider(),
        ],
      ),
    );
  }
}