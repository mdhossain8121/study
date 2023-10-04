import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExamListItemBody extends StatelessWidget{

  final String subject;
  final String questionCount;
  final String time;
  final String marks;

  ExamListItemBody({
    super.key,
    required this.subject,
    required this.questionCount,
    required this.time,
    required this.marks,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8.0,bottom: 8.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subject,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "Question $questionCount \u22C5 Mins $time \u22C5 Marks $marks",
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                border: Border.all(
                  color: Theme.of(context).colorScheme.surfaceTint,
                  width: 2.0
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 3.0,bottom: 3.0),
                child: Text(
                  "START"
                ),
              ),
            ),
            onTap: (){
              ScaffoldMessenger.of(context)
                  ..clearSnackBars()
                  ..showSnackBar(SnackBar(content: Text("Tapped")));
            },
          )
        ],
      ),
    );
  }
}