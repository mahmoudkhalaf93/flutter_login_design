import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Color(0xff202b34),
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.grey[400], fontSize: 18,fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
              onPressed: () =>
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Search icon"),
                  )),
              icon: Icon(
                Icons.search,
                color: Colors.grey[400],
              )),
          IconButton(
              onPressed: () => ScaffoldMessenger.of(context)
                  .showSnackBar(SnackBar(content: Text("menu"))),
              icon: Icon(Icons.more_vert, color: Colors.grey[400]))
        ],
      ),
      body: Container(
          color: Color(0xff101d25),
          child: Column(
            children: [
              Container(
                color: Color(0xff202b34),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 0.0),
                      child: IconButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("camera")));
                          },
                          icon: Icon(
                            Icons.camera_alt,
                            color: Colors.grey[400],
                            size: 23,
                          )),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 14),
                        child: Text(
                          "CHATS",
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "STATUS",
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: CircleAvatar(
                                backgroundColor: Colors.grey[400],
                                radius: 3,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 13),
                            child: Text(
                              "CALLS",
                              style: TextStyle(
                                color: Colors.teal[400],
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            color: Colors.teal[400],
                            height: 3,
                            alignment: Alignment.bottomCenter,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.call_made_outlined,
                                      color: Colors.teal[400],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.south_west_outlined,
                                      color: Colors.red[300],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.call_made_outlined,
                                      color: Colors.teal[400],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.south_west_outlined,
                                      color: Colors.red[300],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.south_west_outlined,
                                      color: Colors.red[300],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.call_made_outlined,
                                      color: Colors.teal[400],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.call_made_outlined,
                                      color: Colors.teal[400],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.call_made_outlined,
                                      color: Colors.teal[400],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.south_west_outlined,
                                      color: Colors.red[300],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.call_made_outlined,
                                      color: Colors.teal[400],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.south_west_outlined,
                                      color: Colors.red[300],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.south_west_outlined,
                                      color: Colors.red[300],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.call_made_outlined,
                                      color: Colors.teal[400],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 16.0),
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://cdn-icons-png.flaticon.com/512/149/149071.png"),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "+20 106 458 7878",
                                style: TextStyle(
                                    color: Colors.grey[200],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.call_made_outlined,
                                      color: Colors.teal[400],
                                      size: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Text(
                                        "29 August, 2:15 pm",
                                        style: TextStyle(
                                            color: Colors.grey[500],
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: IconButton(
                                  onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(content: Text("call")));
                                  },
                                  icon: Icon(
                                    Icons.call,
                                    color: Colors.teal[400],
                                  )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],),
                ),
              )

            ],
          )),
    );
  }
}
