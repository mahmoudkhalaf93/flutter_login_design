import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttermyapp/compnents.dart';
import 'package:fluttermyapp/old_tasks/bmi_calculator.dart';
import 'package:fluttermyapp/old_tasks/calls_screen.dart';
import 'package:fluttermyapp/old_tasks/counter_screen.dart';
import 'package:fluttermyapp/old_tasks/forget_your_password.dart';
import 'package:fluttermyapp/old_tasks/login.dart';
import 'package:fluttermyapp/old_tasks/messenger.dart';
import 'package:fluttermyapp/old_tasks/register.dart';
import 'package:fluttermyapp/old_tasks/reset_password.dart';
import 'package:fluttermyapp/old_tasks/verify_your_email.dart';
import 'old_tasks/listview_screen.dart';

class Nav extends StatelessWidget {
  List<model> screens = [];
  late BuildContext contxt;

  Nav() {
    screens.add(model("login", () {
      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => Login(),
          ));
    }));
    screens.add(model("regiser", () {
      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => Register(),
          ));
    }));
    screens.add(model("forget password", () {
      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => ForgetYourPassword(),
          ));
    }));
    screens.add(model("reset password", () {
      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => ResetPassword("code4546"),
          ));
    }));
    screens.add(model("verify email", () {
      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => VerifyYourEmail(),
          ));
    }));
    screens.add(model("whatsapp", () {
      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => CallsScreen(),
          ));
    }));
    screens.add(model("messenger", () {
      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => Messenger("_email", "_password"),
          ));
    }));
    screens.add(model("bmi", () {
      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => BmiCalculator(),
          ));
    }));
    screens.add(model("counter", () {
      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => CounterScreen(),
          ));
    }));
    screens.add(model("listview Test", () {
      Navigator.push(
          contxt,
          MaterialPageRoute(
            builder: (context) => ListViewScreen(),
          ));
    }));
  }

  @override
  Widget build(BuildContext context) {

    contxt = context;
    return Scaffold(appBar: AppBar(title: Text("all screens app"),),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: myButtonWidget(
                  texts: screens[index].name,
                  onPressed: screens[index].press,
                  ));
        },
        itemCount: screens.length,
        scrollDirection: Axis.vertical,
      ),
    );

  }

}

class model {
  late String _name;
  late VoidCallback _press;

  model(this._name, this._press);

  VoidCallback get press => _press;

  set press(VoidCallback value) {
    _press = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}
