import 'package:equatable/equatable.dart';
import 'package:study/model/study/api_pagination_response_model.dart';

import 'package:study/model/study/exam_list_Item_model.dart';

abstract class ExamBlocState extends Equatable{

}

class ExamBlocInitState extends ExamBlocState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class ExamBlocLoadingState extends ExamBlocState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}

class ExamBlocSuccessState extends ExamBlocState{
  final ApiPaginationResponseModel<ExamListItemModel?> examList;

  ExamBlocSuccessState(
    this.examList
  );

  @override
  // TODO: implement props
  List<Object?> get props => [examList];

}

class ExamBlocFailState extends ExamBlocState{

  final String? message;

  ExamBlocFailState(
    this.message
  );

  @override
  // TODO: implement props
  List<Object?> get props => [message];

}