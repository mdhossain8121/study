import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/bloc/exam/exam_bloc.dart';
import 'package:study/bloc/exam/exam_bloc_event.dart';
import 'package:study/bloc/exam/exam_bloc_state.dart';
import 'package:study/ui/study/components/custom_loader.dart';
import 'package:study/ui/study/components/error_message.dart';
import 'package:study/ui/study/components/no_data_found.dart';
import '../../../../model/study/exam_list_Item_model.dart';
import 'components/exam_list_item.dart';


class ExamListUi extends StatefulWidget{
  const ExamListUi({super.key});

  @override
  State<StatefulWidget> createState() {
    return ExamListUiState();
  }
}

class ExamListUiState extends State<ExamListUi>{

  @override
  void initState() {
    super.initState();
    context.read<ExamBloc>().add(GetAllExamList());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Text(
                  "Exam List",
                  style: TextStyle(
                    fontSize: 22.0
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
            BlocBuilder<ExamBloc,ExamBlocState>(
              builder: (context,state){
                if(state is ExamBlocSuccessState){
                  if(state.examList.data!=null){
                    return _viewSuccess(context, state.examList.data!);
                  }else{
                    return NoDataFound(message: state.examList.message);
                  }
                } else if(state is ExamBlocFailState) {
                  return ErrorMessage(message: state.message);
                } else {
                   return const CustomLoader();
                }
              },
            ),
          ],
        )
      ),
    );
  }

  Widget _viewSuccess(BuildContext context, List<ExamListItemModel?> examList){
    return ListView.builder(
      itemBuilder: (context,index){
        ExamListItemModel? exam = examList[index];
        return ExamListItem(
            title: exam?.title??"Title not found",
            subTitle: exam?.subtitle??"Title not found",
            subject: exam?.subject??"Title not found",
            questionCount: "${exam?.totalQuestions??"0"}",
            time: "${exam?.time??"0"}",
            marks: "${exam?.marks??"0"}"
        );
      },
      itemCount: examList.length,
      shrinkWrap: true,
    );
  }
}