import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/bloc/exam/exam_bloc_event.dart';
import 'package:study/bloc/exam/exam_bloc_state.dart';
import 'package:study/constant/app_constants.dart';
import 'package:study/model/study/api_pagination_response_model.dart';
import 'package:study/model/study/exam_list_Item_model.dart';
import 'package:study/repo/remote/study/exam_repo.dart';

class ExamBloc extends Bloc<ExamBlocEvent,ExamBlocState>{

  ExamBloc():super(ExamBlocInitState()){
    ExamRepo examRepo = ExamRepo();

    on<GetAllExamList>((event,emit) async {
      try{
        emit(ExamBlocLoadingState());
        ApiPaginationResponseModel<ExamListItemModel?>? response = await examRepo.getExamList();
        if(response!=null){
          if(response.data!=null && response.data?.isNotEmpty==true){
            emit(ExamBlocSuccessState(response));
          }else{
            emit(ExamBlocFailState(response.message??AppConstants.apiError));
          }
        }else{
          emit(ExamBlocFailState(AppConstants.apiError));
        }
      }catch(ex){
        emit(ExamBlocFailState(AppConstants.appError));
      }
    });
  }
}