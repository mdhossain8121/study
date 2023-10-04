import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const FlutterPracticeApp());
}


class FlutterPracticeApp extends StatelessWidget{
  const FlutterPracticeApp({super.key});

  @override
  Widget build(BuildContext context){
    return const HomePage();
  }
}

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Practice",
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Flutter practice"),
          ),
          body: HomePageBody()
      ),
    );
  }

  void showToast(BuildContext context,String message){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }
}

class HomePageBody extends StatelessWidget{
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {

    Widget titleScreen = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    "Container text with bottom padding",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                const Text(
                  "Text with no padding",
                  style: TextStyle(
                      color: Colors.grey
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text("48")
        ],
      ),
    );

    Widget buttonSection =  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildColumnButton(Icons.call, Colors.blue, "Call"),
        _buildColumnButton(Icons.route, Colors.blue, "route"),
        _buildColumnButton(Icons.share, Colors.blue, "Share"),
      ],
    );

    Widget text = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
            'Alps. Situated 1,578 meters above sea level, it is one of the '
            'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
            'half-hour walk through pastures and pine forest, leads you to the '
            'lake, which warms to 20 degrees Celsius in the summer. Activities '
            'enjoyed here include rowing, and riding the summer toboggan run.',
        softWrap: true,
      ),
    );

    return ListView(
      children: [
        Image.asset(
          'assets/images/lake.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        titleScreen,
        buttonSection,
        text
      ],
    );
  }


  Column _buildColumnButton(IconData iconData, Color color, String label){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData,color: color),
        Container(
          padding: const EdgeInsets.only(top: 8),
          child: Text(label,
            style: TextStyle( fontSize: 12, color: color ),
          ),
        )
      ],
    );
  }
}