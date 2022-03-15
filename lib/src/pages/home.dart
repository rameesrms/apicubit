import 'package:apicubit/src/cubit/json_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<JsonCubit, JsonState>(
          builder: (context, state) {
            if (state is JsonLoading) {
              return CircularProgressIndicator();
            }
            else if (state is JsonLoaded) {
              return ListView.builder(
                  itemCount: state.record.length,
                  itemBuilder: (context, pos) {
                return ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage("${state
                      .record[pos].photo}"),)
                  , title: Text("${state.record[pos].name}"),
                );
              });
            }
            else if (state is JsonError) {
              return Text("Error");
            }
            else {
              return Text("ramee");
            }
          },
        ),
      ),
    );
  }


  void getData() {
    BlocProvider.of<JsonCubit>(context).getData();
  }
}
