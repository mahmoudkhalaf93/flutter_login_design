import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermyapp/login.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(left: 32, right: 32, bottom: 200),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "from previous used password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Container(
                  padding: EdgeInsets.only(top: 24, bottom: 20),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "New Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        contentPadding: EdgeInsets.only(left: 20)),
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Confirm New Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)),
                      contentPadding: EdgeInsets.only(left: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48.0),
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Login(),
                            )),
                    child: Text("Reset Password"),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.only(left: 80, right: 80),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        primary
                        :Colors.indigo),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
