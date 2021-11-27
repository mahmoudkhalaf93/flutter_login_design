import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttermyapp/bloclesson/taskes_cubit.dart';
import 'package:fluttermyapp/bloclesson/taskes_states.dart';

import '../compnents.dart';
import 'datalist.dart';

class DoneScreen extends StatefulWidget {
  const DoneScreen({Key? key}) : super(key: key);

  @override
  _DoneScreenState createState() => _DoneScreenState();
}

class _DoneScreenState extends State<DoneScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TasksCubit,TasksStates>(builder: (context, state) {
return buildTaskListView(TasksCubit.get(context).donelist,context) ;
    }, listener: (context, state) {

    },);
     // buildTaskListView(TasksCubit.get(context).donelist,context) ;
  }
}
