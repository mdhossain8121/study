import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget{

  final String imageSrc;
  final double padding;

  const SocialIcon({
    super.key,
    required this.imageSrc,
    required this.padding
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: 2,
          color: Colors.grey
        )
      ),
      child: SvgPicture.asset(
        imageSrc,
        height: 20,
        width: 20,
      ),
    );
  }
}