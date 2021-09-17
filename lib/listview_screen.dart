import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return listViewItem(index);
              },
              itemCount: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget listViewItem(var index) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(50)),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Text("hello world"),
    );
  }
}
