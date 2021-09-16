import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff202b34),
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.grey[400],fontSize: 21),
        ),
        actions: [
          IconButton(
              onPressed: () =>
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Search icon"),
                  )),
              icon: Icon(Icons.search)),
          IconButton(
              onPressed: () => ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("menu"))),
              icon: Icon(Icons.more_vert))
        ],
      ),
      body: SafeArea(
          child: Container(
              height: double.infinity,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Color(0xff202b34),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.grey[400],
                            size: 26,))
                      ],
                    ),
                  ),
                  Container(
                    color: Color(0xff101d25),
                    width: double.infinity,
                    height: double.infinity,
                  )
                ],
              ))),
    );
  }
}
//code22222