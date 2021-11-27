import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttermyapp/bloclesson/taskes_cubit.dart';
import 'package:fluttermyapp/bloclesson/taskes_states.dart';

import '../compnents.dart';


class ArchiveScreen extends StatefulWidget {
  const ArchiveScreen({Key? key}) : super(key: key);

  @override
  _ArchiveScreenState createState() => _ArchiveScreenState();
}

class _ArchiveScreenState extends State<ArchiveScreen> {
  @override
  Widget build(BuildContext context) {

    return BlocConsumer<TasksCubit,TasksStates>(builder: (context, state) {
      return buildTaskListView(TasksCubit.get(context).archivelist,context);
    }, listener: (context, state) {

    },)  ;
  }
}
