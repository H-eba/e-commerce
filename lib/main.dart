import 'package:ecommerce/core/api/api_manager/api_manager.dart';
import 'package:ecommerce/presentation/home/tabs/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/DI/di.dart';
import 'core/my_observer.dart';
import 'myapp.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  ApiManager.init();
  configureDependencies();
  runApp(const MyApp());
      //BlocProvider(
    //  create: (BuildContext context)=>HomeViewModel(),

    // child:  const MyApp()));
}




