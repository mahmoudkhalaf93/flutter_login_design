import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermyapp/old_tasks/calls_screen.dart';
import 'package:fluttermyapp/old_tasks/listview_screen.dart';

import '../models/user.dart';

class Messenger extends StatelessWidget {
  late List<User> users = [];
  late List<User> usersMessage = [];
String _email,_password;


  Messenger(this._email, this._password) {
print(_email + " "+ _password);
    var user1 = User.state("Amir",
        "https://antolgy.com/wp-content/uploads/2018/08/elon-musk-1.jpg");

    var user2 = User.state("Peter",
        "https://media.wired.com/photos/6019cab23453f789506008d0/1:1/w_1600,h_1600,c_limit/Sec_Bezos_1036084400.jpg");

    var user3 = User.state("Fahmy",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Mark_Zuckerberg_F8_2018_Keynote_%28cropped%29.jpg/1200px-Mark_Zuckerberg_F8_2018_Keynote_%28cropped%29.jpg");

    var user4 = User.state(
        "Marco", "https://img.kooora.com/?i=ashraf-zamrani%2Flionelmessi.gif");

    var user5 = User.state("Khalaf",
        "https://content.fortune.com/wp-content/uploads/2020/09/CNV.10.20.FORTUNE_BILL_AND_MELINDA_GATES_030-vertical.jpg");

    var user6 = User.state("Hamdy",
        "https://cdn.vox-cdn.com/thumbor/7VvhqD3PcqsQrD3L4J2LBRhlsaU=/0x137:575x520/1400x1400/filters:focal(0x137:575x520):format(png)/cdn.vox-cdn.com/assets/695120/jobs_hero20110329.png");

    users.add(user1);
    users.add(user2);
    users.add(user3);
    users.add(user4);
    users.add(user5);
    users.add(user6);

    users.add(user1);
    users.add(user2);
    users.add(user3);
    users.add(user4);
    users.add(user5);
    users.add(user6);

    var userm1 = User.message(
        "Amir",
        "https://antolgy.com/wp-content/uploads/2018/08/elon-musk-1.jpg",
        "message test hello Amir",
        false,
        false);

    var userm2 = User.message(
        "Peter",
        "https://media.wired.com/photos/6019cab23453f789506008d0/1:1/w_1600,h_1600,c_limit/Sec_Bezos_1036084400.jpg",
        "message test hello Peter",
        false,
        true);

    var userm3 = User.message(
        "Fahmy",
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/Mark_Zuckerberg_F8_2018_Keynote_%28cropped%29.jpg/1200px-Mark_Zuckerberg_F8_2018_Keynote_%28cropped%29.jpg",
        "message test hello Fahmy",
        true,
        false);

    var userm4 = User.message(
        "Marco",
        "https://img.kooora.com/?i=ashraf-zamrani%2Flionelmessi.gif",
        "message test hello Marco",
        true,
        true);

    var userm5 = User.message(
        "Khalaf",
        "https://content.fortune.com/wp-content/uploads/2020/09/CNV.10.20.FORTUNE_BILL_AND_MELINDA_GATES_030-vertical.jpg",
        "message test hello Khalaf",
        false,
        true);

    var userm6 = User.message(
        "Hamdy",
        "https://cdn.vox-cdn.com/thumbor/7VvhqD3PcqsQrD3L4J2LBRhlsaU=/0x137:575x520/1400x1400/filters:focal(0x137:575x520):format(png)/cdn.vox-cdn.com/assets/695120/jobs_hero20110329.png",
        "message test hello Hamdy",
        true,
        false);

    usersMessage.add(userm1);
    usersMessage.add(userm2);
    usersMessage.add(userm3);
    usersMessage.add(userm4);
    usersMessage.add(userm5);
    usersMessage.add(userm6);

    usersMessage.add(userm1);
    usersMessage.add(userm2);
    usersMessage.add(userm3);
    usersMessage.add(userm4);
    usersMessage.add(userm5);
    usersMessage.add(userm6);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 16),
        color: Colors.black,
        width: double.infinity,
        child: SafeArea(
          child: ListView(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        "https://thumbor.forbes.com/thumbor/fit-in/416x416/filters%3Aformat%28jpg%29/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F5bb22ae84bbe6f67d2e82e05%2F0x0.jpg%3Fbackground%3D000000%26cropX1%3D627%26cropX2%3D1639%26cropY1%3D129%26cropY2%3D1142"),
                  ), //profile image
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    "Chats",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ), //chat
                  Expanded(child: SizedBox()),
                  CircleAvatar(
                    child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ListViewScreen(),
                          )),
                      child: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                    backgroundColor: Colors.grey[700],
                  ), //camera
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                    backgroundColor: Colors.grey[700],
                  ), //edit pen
                  SizedBox(
                    width: 16,
                  ),
                ],
              ), //profile , Chats , camera , edit
              SizedBox(
                height: 16,
              ),
              ListView(
                shrinkWrap: true,
                primary: false,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 16, left: 16, right: 16),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[700]),
                    child: TextFormField(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          border: InputBorder.none),
                    ),
                  ), //search
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 110,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 70,
                          margin: EdgeInsets.symmetric(horizontal: 8),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 31,
                                child: IconButton(
                                  onPressed: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CallsScreen(),
                                      )),
                                  icon: Icon(Icons.add),
                                ),
                                backgroundColor: Colors.grey[700],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Your Story",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        ListView.separated(
                          separatorBuilder: (context, index) {
                            return VerticalDivider(
                              width: 1,
                              color: Colors.white,
                              thickness: .1,
                            );
                          },
                          itemCount: users.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              width: 70,
                              margin: EdgeInsets.symmetric(horizontal: 8),
                              alignment: Alignment.topCenter,
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 31,
                                    backgroundImage:
                                        NetworkImage(users[index].url),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    users[index].name,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  //jefbezzzzozzzzzzz

//elooooooooooooooooooon
                  Container(
                    margin: EdgeInsets.only(left: 12, right: 8),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        thickness: .2,
                        height: 16,
                        color: Colors.white,
                      ),
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Row(
                            children: [
                              Stack(alignment: Alignment.bottomRight,
                                children: [
                                  CircleAvatar(
                                    radius: 31,
                                    backgroundImage:
                                        NetworkImage(usersMessage[index].url),
                                  ),
                                  CircleAvatar(backgroundColor: Colors.black,radius: 8.2,),
                                  CircleAvatar(backgroundColor: usersMessage[index].active ? Colors.green : Colors.red,radius: 7,)
                                ],
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            usersMessage[index].name,
                                            style: TextStyle(
                                                color: Color(0xFFBABABA),
                                                fontSize: 21,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        CircleAvatar(
                                          radius: 6,
                                          backgroundColor:
                                              usersMessage[index].read
                                                  ? Colors.blue
                                                  : Colors.transparent,
                                        )
                                      ],
                                    ),
                                    Text(
                                      usersMessage[index].message,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: Color(0xFFBABABA),
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                          overflow: TextOverflow.ellipsis),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
