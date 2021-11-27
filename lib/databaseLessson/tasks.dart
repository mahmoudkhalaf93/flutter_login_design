import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttermyapp/bloclesson/taskes_cubit.dart';
import 'package:fluttermyapp/bloclesson/taskes_states.dart';
import 'package:fluttermyapp/compnents.dart';





class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TasksCubit,TasksStates>(builder: (context, state) {
      return buildTaskListView(TasksCubit.get(context).activelist,context);
    }, listener: (context, state) {

    },);


      //buildTaskListView(TasksCubit.get(context).activelist,context);
  }


}
