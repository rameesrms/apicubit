import 'package:apicubit/src/cubit/json_cubit.dart';
import 'package:apicubit/src/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => JsonCubit(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}
