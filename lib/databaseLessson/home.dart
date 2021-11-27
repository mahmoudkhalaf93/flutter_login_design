import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttermyapp/bloclesson/taskes_cubit.dart';
import 'package:fluttermyapp/bloclesson/taskes_states.dart';
import 'package:fluttermyapp/compnents.dart';
import 'package:fluttermyapp/databaseLessson/archive.dart';
import 'package:fluttermyapp/databaseLessson/done.dart';
import 'package:fluttermyapp/databaseLessson/tasks.dart';
import 'package:sqflite/sqflite.dart';

import 'datalist.dart';

class Home extends StatelessWidget {
late BuildContext context;
  var _keyScaffoldForBottomSheet = GlobalKey<ScaffoldState>();
  var _formBottomSheetKey = GlobalKey<FormState>();

  var _titleController = TextEditingController();
  var _dateController = TextEditingController();
  var _timeController = TextEditingController();




  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   openMyDatabase();
  // }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    TasksCubit cubit;
    return BlocProvider(create: (context) => TasksCubit(InitTasksStates())..openMyDatabase(),
    child: BlocConsumer<TasksCubit,TasksStates>(
      listener: (context, state) {
        showSnackBar();
      },
      builder: (context, state) {
        cubit = TasksCubit.get(context);
        return Scaffold(
          key: _keyScaffoldForBottomSheet,
          appBar: AppBar(
            title: myTextView(cubit.homeTitle[cubit.bottomNavIndex]),
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: cubit.bottomNavIndex,
              onTap: (value) {
                cubit.bottomNavIndex = value;
                cubit.bottomNavIndex == 0 ? {} : {if (cubit.isSheetExpanded) Navigator.pop(context)};
                cubit.onBottomNavChanged(bottomIndex: value);
                // setState(() {});
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.task), label: "Tasks"),
                BottomNavigationBarItem(icon: Icon(Icons.done), label: "Done"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.archive), label: "Archive"),
              ]),
          floatingActionButton: cubit.bottomNavIndex == 0
              ? FloatingActionButton(
            onPressed: () {
              if (cubit.isSheetExpanded) {
                if (_formBottomSheetKey.currentState!.validate()) {
                  cubit.insertTask(title: _titleController.text,
                      date: _dateController.text,time: _timeController.text);
                  //   setState(() {});
                  Navigator.pop(context);
                }

              } else {
                _keyScaffoldForBottomSheet.currentState!
                    .showBottomSheet(
                        (context) => bottomSheetRelatedWithScaffold(),
                    elevation: 20)
                    .closed
                    .then((value) {
                  cubit.isSheetExpanded = false;
                  _titleController.text = "";
                  _dateController.text = "";
                  _timeController.text = "";
                  //setState(() {});
                  cubit.emit(InitTasksStates());
                });
                cubit.isSheetExpanded = true;
                cubit.emit(InitTasksStates());
                //setState(() {});
              }

            },
            child: Icon(cubit.isSheetExpanded ? Icons.add_task : Icons.add),
          )
              : null,
          body: cubit.screens[cubit.bottomNavIndex],
        );
    }, ),);
  }

  Widget bottomSheetRelatedWithScaffold() {
    return Form(
      key: _formBottomSheetKey,
      child: Container(
        padding: EdgeInsets.all(16),
        color: Colors.grey[100],
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 16,
            ),
            myTextFormField(
                validator: (value) {
                  if (value!.isEmpty) return "Required";
                },
                prefixIcon: Icons.title,
                label: "Title",
                controller: _titleController),
            SizedBox(
              height: 16,
            ),
            myTextFormField(
                onTap: () => _selectDate(),
                validator: (value) {
                  if (value!.isEmpty) return "Required";
                },
                prefixIcon: Icons.date_range,
                label: "Date",
                controller: _dateController),
            SizedBox(
              height: 16,
            ),
            myTextFormField(
                onTap: () => _selectTime(),
                validator: (value) {
                  if (value!.isEmpty) return "Required";
                },
                prefixIcon: Icons.timelapse,
                label: "Time",
                controller: _timeController),
            SizedBox(
              height: 16,
            ),
            myButtonWidget(
              texts: "close",
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }


  void showSnackBar(){
    final snackbar = SnackBar(
      content: Text('Yay! A SnackBar!'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          // Some code to undo the change.
        },
      ),
    );
_keyScaffoldForBottomSheet.currentState!.showSnackBar(snackbar);
  }

  // void bottomSheetNotRelatedWithScaffold() {
  //   showModalBottomSheet(
  //     context: context,
  //     elevation: 50,
  //     builder: (context) {
  //       return Form(
  //         key: _formBottomSheetKey,
  //         child: Container(
  //           padding: EdgeInsets.all(16),
  //           child: Column(
  //             mainAxisSize: MainAxisSize.min,
  //             children: [
  //               myTextFormField(
  //                   validator: (value) {
  //                     if (value!.isEmpty) return "Required";
  //                   },
  //                   prefixIcon: Icons.title,
  //                   label: "Title",
  //                   controller: _titleController),
  //               myButtonWidget(
  //                 texts: "test",
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                 },
  //               )
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  DateTime _selectedDate = DateTime.now();

  void _selectDate() {
    showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(165, 8),
        lastDate: DateTime(2101))
        .then((value) {
      if (value != null) {
        _selectedDate = value;
        _dateController.text =
        "${_selectedDate.day}/${_selectedDate.month}/${_selectedDate.year}";
      }
    });
    // if (picked != null && picked != _selectedDate)
    //   setState(() {
    //     _selectedDate = picked;
    //     _dateController.text =
    //     "${_selectedDate.day} / ${_selectedDate.month} / ${_selectedDate.year}";
    //   });
  }

  TimeOfDay _time = TimeOfDay.now();

  //TimeOfDay(hour: 7, minute: 15);
  void _selectTime() {
    showTimePicker(
      context: context,
      initialTime: _time,
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            child: child!);
      },
    ).then((value) {
      // if(value!=null)
      _timeController.text = value!.format(context);
    }).catchError((error) {
      print('XXXXXXXXXXXXXXXXXXX ${error.toString()}');
    });

    // if (newTime != null) {
    //   setState(() {
    //     _time = newTime;
    //     _timeController.text = _time.format(context);
    //   });
    // }
  }





}



