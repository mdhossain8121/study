import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/bloc/login/login_bloc_event.dart';
import 'package:study/bloc/login/login_bloc_state.dart';
import 'package:study/constant/app_constants.dart';
import 'package:study/model/study/user_model.dart';
import 'package:study/repo/local/shared_preferences.dart';

import '../../repo/remote/study/auth_repo.dart';

class LoginBloc extends Bloc<LoginBlocEvent,LoginBlocState>{

  LoginBloc():super(LoginInitState()){

    AuthRepo authRepo = AuthRepo();

    on<LoginButtonPressed>((event,emit) async {
      try{
        emit(LoginLoadingState());
        UserModel? userModel = await authRepo.getLoginResponse(event.userName,event.password,event.token);
        if(userModel!=null){
          SharedPreferencesUtil.setString(SharedPreferencesUtil.userFullName, userModel.fullName.toString());
          SharedPreferencesUtil.setString(SharedPreferencesUtil.userName, userModel.username.toString());
          SharedPreferencesUtil.setString(SharedPreferencesUtil.authToken, "Bearer ${userModel.token.toString()}");
          emit(LoginSuccessState(userModel));
        }else{
          emit(LoginFailState("User name or password is invalid"));
        }
      }catch(ex){
        print("catch LoginBloc $ex");
        emit(LoginFailState(AppConstants.appError));
      }
    });
  }
}