import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:study/bloc/package/package_bloc.dart';
import 'package:study/bloc/package/package_bloc_event.dart';
import 'package:study/bloc/package/package_bloc_state.dart';

import 'package:study/model/study/package/package_model.dart';
import 'package:study/ui/study/components/custom_loader.dart';
import 'package:study/ui/study/components/error_message.dart';
import 'package:study/ui/study/components/no_data_found.dart';

class PackageListUi extends StatefulWidget{

  @override
  State createState() {
    return PackageListUiState();
  }
}

class PackageListUiState extends State<PackageListUi>{

  @override
  void initState() {
    super.initState();
    context.read<PackageBloc>().add(GetAllPackageList());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: BlocBuilder<PackageBloc,PackageBlocState>(
            builder: (context,state){
              if(state is PackageSuccessState){
                List<PackageListItemModel?>? packageList = state.responsePackageList.data;
                if(packageList?.isNotEmpty==true){
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      PackageListItemModel? packageListItemModel = packageList?[index];
                      return Text(
                          packageListItemModel?.name??"N/A"
                      );
                    },
                  );
                }else{
                  return NoDataFound(message:state.responsePackageList.message??"No Package found");
                }
              } else if(state is PackageErrorState){
                return ErrorMessage(message:state.message);
              } else {
                return CustomLoader();
              }
            },
          ),
        )
    );
  }
}