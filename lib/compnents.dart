import 'package:flutter/material.dart';
import 'package:fluttermyapp/bloclesson/taskes_cubit.dart';
import 'package:fluttermyapp/databaseLessson/home.dart';

Widget myTextFormField({
  required FormFieldValidator<String> validator,
  TextInputAction textInputAction = TextInputAction.next,
  TextInputType keyboardType = TextInputType.text,
  required IconData prefixIcon,
  required String label,
  Widget? suffixIcon,
  required TextEditingController controller,
  bool obscureText = false,
  GestureTapCallback? onTap
}) {
  return TextFormField(
    onTap: onTap,
    controller: controller,
    validator: validator,
    textInputAction: textInputAction,
    keyboardType: keyboardType,
    obscureText: obscureText,
    decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefixIcon),
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular( 50 )),
        contentPadding: EdgeInsets.only( left: 20 ) ),
  );
}

const Color blueColor = Color(0xFF3E4BAD);

Widget myButtonWidget(
    {required VoidCallback? onPressed ,
    required String texts,
    Color backgroundColor = blueColor,
    double height = 40,
    double width = 300}) {
  return ElevatedButton(
    onPressed: onPressed ,
    child: Text(
      texts,
      maxLines: 1,
    ),
    style: ElevatedButton.styleFrom(
        primary: backgroundColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        minimumSize: Size(width, height)),
  );
}

Widget myTextView(String text,
    {
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    TextOverflow? overflow}) {
  return Text(
    text,

    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      overflow: overflow,
    ),
  );
}


Widget buildTaskListView(List<Map> list,BuildContext context){

  Widget buildTaskItem(int index) {
    return Dismissible(
      key:  Key(list[index]['id'].toString()),
      onDismissed: (direction) {
        TasksCubit.get(context).deleteTask(id: list[index]['id']);
        print("deleted compo");

      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius:BorderRadius.circular(10) ),
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.all(10),

        child: Material(
          color: Colors.grey[200],
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [Row(
                children: [
                  Expanded(child: myTextView(list[index]['title'],fontSize: 20)),
                  IconButton(onPressed: () {
                    TasksCubit.get(context).updateTask(status: "done", id: list[index]['id']);


                  }, icon: Icon(Icons.done_all),color: Colors.blue,),
                  IconButton(onPressed: () {
                    TasksCubit.get(context).updateTask(status: "archive", id: list[index]['id']);
                  }, icon: Icon(Icons.archive),color: Colors.blue,)
                ],
              ),
                SizedBox(height: 10,),
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(child: myTextView("Date : ${list[index]['date']}",fontSize: 16)),
                    Expanded(child: myTextView("Time : ${list[index]['time']}",fontSize: 16))
                  ],)
              ],

            ),
          ),
        ),
      ),
    );
  }
  return ListView.separated(
      itemBuilder: (context, index) => buildTaskItem(index),
      separatorBuilder: (context, index) => SizedBox(
        height: 10,
      ),
      itemCount: list.length);

}