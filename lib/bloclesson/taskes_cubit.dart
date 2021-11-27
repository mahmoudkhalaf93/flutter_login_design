

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



import 'package:fluttermyapp/bloclesson/taskes_states.dart';
import 'package:fluttermyapp/databaseLessson/archive.dart';

import 'package:fluttermyapp/databaseLessson/done.dart';
import 'package:fluttermyapp/databaseLessson/tasks.dart';
import 'package:sqflite/sqflite.dart';

class TasksCubit extends Cubit<TasksStates>{
  TasksCubit(TasksStates initialState) : super(initialState);

  static TasksCubit get(context) => BlocProvider.of(context);
  onBottomNavChanged({required int bottomIndex}){
    bottomNavIndex =bottomIndex;
    emit(BottomNavStates());
  }
  int bottomNavIndex = 0;
  List<Widget> screens = [TasksScreen(), DoneScreen(), ArchiveScreen()];

  List<String> homeTitle = ["Tasks", "Done", "Archive"];

  bool isSheetExpanded = false;
  late Database database;
  openMyDatabase()  {
    openDatabase(
      "my.db",
      version: 1,
      onCreate: (db, version) {
        print('database created');
        db.execute(
            'CREATE TABLE Tasks (id INTEGER PRIMARY KEY, title TEXT, date TEXT, time TEXT, status TEXT)');

        print('table creaated');
      },
      onOpen: (db) {
        print('database open');
        database=db;
        getTasks(status: "active");
        getTasks(status: "done");
        getTasks(status: "archive");

        // updateTask(id: 1,status: "active pro");
        //insertTask();
      },
    );

    // //========================
    // openDatabase(
    //   "my.db", version: 1, onCreate: (db, version) {
    //
    // },onOpen: (db) {
    //   database =db;
    // },);
    // //=============================
    // openDatabase(
    //   "my.db", version: 1, onCreate: (db, version) {
    //
    // },).then((value) {
    //   database=value;
    // });
  }
  insertTask({required String title,required String date ,required String time }) {
    database.transaction((txn) async {
      //status => active , done ,archive
      txn.rawInsert(
          'INSERT INTO Tasks(title, date, time, status) VALUES("$title", "$date", "$time", "active")')
      // rawInsert(
      //     'INSERT INTO Tasks(title, date, time, status) VALUES("title 1", "22/10/2021", "10:50 AM", "active")')
          .then((value) {
getTasks(status: "active");

      }).catchError((onError) {
        print('error in insert :=> $onError');
      });
    });
  }

  getTasks({required String status}) async{
    database.rawQuery('SELECT * FROM Tasks WHERE status = "$status"').then((value) {
      if(status == "active") activelist = value;
      else if(status =="done") donelist =value;
      else if(status =="archive")archivelist = value;
      emit(GetTasksStates());
      print('active size : ${activelist.length}');
      print('done size : ${donelist.length}');
      print('archive size : ${archivelist.length}');
    });
    print("getTasks work");
  }

  deleteTask({required int id}){
    database.rawDelete('DELETE FROM Tasks WHERE id = ?',['$id']).then((value) {
      print("deleted cubit");
    }).then((value) {
      getTasks(status: "active");
      getTasks(status: "done");
      getTasks(status: "archive");
    }).catchError((error){
      print("error deleted");
    });
  }

  updateTask({required String status , required int id}){
    database.rawUpdate('UPDATE Tasks SET status = ? WHERE id = ?',['$status',id])
        .then((value) {
          getTasks(status: "active");
          getTasks(status: "done");
          getTasks(status: "archive");
      print('updated : $status id : $id');
    });
  }

  List<Map> activelist = [];
  List<Map> donelist = [];
  List<Map> archivelist = [];


}