import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/bloc/package/package_bloc_event.dart';
import 'package:study/bloc/package/package_bloc_state.dart';
import 'package:study/constant/app_constants.dart';
import 'package:study/model/study/api_response_model.dart';
import 'package:study/model/study/package/package_model.dart';
import 'package:study/repo/remote/study/package_repo.dart';

class PackageBloc extends Bloc<PackageBlocEvent,PackageBlocState>{


  PackageBloc():super(PackageInitState()){

    PackageRepo repo = PackageRepo();

    on<GetAllPackageList>((event, emit) async {
      try{
        emit(PackageLoadingState());
        ApiResponseModel<List<PackageListItemModel?>?>? response = await repo.getPackages();
        if(response!=null){
          if(response.data?.isNotEmpty==true){
            emit(PackageSuccessState(response));
          }else{
            emit(PackageErrorState(response.message??AppConstants.apiError));
          }
        }else{
          emit(PackageErrorState(AppConstants.apiError));
        }
      }catch(ex){
        emit(PackageErrorState(AppConstants.appError));
      }
    });

  }
}