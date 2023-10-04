import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeCard extends StatelessWidget{
  
  final String text;
  final String imageSrc;
  
  const HomeCard({
    super.key,
    required this.text,
    required this.imageSrc
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 200.0,
      width: size.width*.5,
      child: Card(
        margin: EdgeInsets.all(5.0),
        elevation: 0,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(
                color: Colors.grey
            )
        ),
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: [
              Expanded(
                child: SvgPicture.asset(
                  imageSrc,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                    fontSize: 18.0
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}