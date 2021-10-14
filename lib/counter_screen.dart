import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  void initState() {
    print('intistate');
  }
  int count = 0;
  _CounterScreenState() {
    print('cosntructor');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter screen"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        child: Text(
          "counter\n $count",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
