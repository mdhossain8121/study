import 'package:equatable/equatable.dart';

abstract class PackageBlocEvent extends Equatable{

}

class GetAllPackageList extends PackageBlocEvent{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}