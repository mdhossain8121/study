import 'package:equatable/equatable.dart';
import 'package:study/model/study/api_response_model.dart';
import 'package:study/model/study/package/package_model.dart';

abstract class PackageBlocState extends Equatable{

}

class PackageInitState extends PackageBlocState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class PackageLoadingState extends PackageBlocState{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class PackageSuccessState extends PackageBlocState{

  final ApiResponseModel<List<PackageListItemModel?>?> responsePackageList;

  PackageSuccessState(this.responsePackageList);

  @override
  // TODO: implement props
  List<Object?> get props => [responsePackageList];
}

class PackageErrorState extends PackageBlocState{

  final String message;

  PackageErrorState(this.message);

  @override
  // TODO: implement props
  List<Object?> get props => [message];
}
