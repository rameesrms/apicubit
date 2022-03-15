import 'dart:convert';

import 'package:apicubit/src/model/model.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:apicubit/src/cubit/json_repository.dart';


part 'json_state.dart';

class JsonCubit extends Cubit<JsonState> {
  JSONRespository respository = JSONRespository();
  JsonCubit() : super(JsonInitial());

  getData() async{
    emit(JsonLoading());
    String jsonArray = await respository.getContactsData();

    List<dynamic> jsonArrayDecoded = jsonDecode(jsonArray);
    List<Record> record =[];
    record = jsonArrayDecoded.map((e) => Record.fromJson(e)).toList();
    emit(JsonLoaded(record));
  }
}
