import 'package:flutter/material.dart';

import '../../../components/custom_divider.dart';
import 'exam_list_item_body.dart';
import 'exam_list_item_header.dart';

class ExamListItem extends StatelessWidget{

  final String title;
  final String subTitle;
  final String subject;
  final String questionCount;
  final String time;
  final String marks;

  ExamListItem({
    super.key,
    required this.title,
    required this.subTitle,
    required this.subject,
    required this.questionCount,
    required this.time,
    required this.marks,
  });

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            side: BorderSide(
              color: Colors.grey
            )
          ),
          color: Colors.transparent,
          elevation: 0.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ExamListItemHeader(title: title, subTitle: subTitle),

              Row(
                children: [
                  CustomDivider(),
                ],
              ),

              ExamListItemBody(subject: subject, questionCount: questionCount, time: time, marks: marks)
            ],
          ),
        ),
      ),
    );
  }
}