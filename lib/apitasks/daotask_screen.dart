import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class daotaskScreen extends StatefulWidget {
  const daotaskScreen({Key? key}) : super(key: key);

  @override
  _daotaskScreenState createState() => _daotaskScreenState();
}

class _daotaskScreenState extends State<daotaskScreen> {
  List<dynamic> posts = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPosts();
  //  gethttp();
  }

  void gethttp() async {
    var response =
        await Dio().get("https://jsonplaceholder.typicode.com/Posts/1");
    print('responsXXX: ${response.data}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
            child: Row(
              children: [
                Text(posts[index]["id"].toString()),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: Text(posts[index]["title"]))
              ],
            ),
          );
        },
      ),
    );
  }

  void getPosts()  {
         Dio().get("https://jsonplaceholder.typicode.com/posts").then((value) {
          print(value);
          posts = value.data;
          print('posts length ==> ${posts.length}');
          print(
              '=====================================================XXXXXXXXXX===================');
          setState(() {});
        });

  }
}
