import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermyapp/forget_your_password.dart';
import 'package:fluttermyapp/reset_password.dart';

class VerifyYourEmail extends StatelessWidget {
  const VerifyYourEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 200, left: 32, right: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Verify Your Email",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: 300,
              margin: EdgeInsets.only(top: 8, bottom: 16),
              child: Text(
                  "Please enter the 6 digit code sent to email@gmail.com",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis),
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "code"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32.0),
              child: Text(
                "Resend Code",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 90,
              height: 2,
              color: Colors.indigo,
              margin: EdgeInsets.only(bottom: 16),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResetPassword(),
                  )),
              child: Text("Confirm"),
              style: ElevatedButton.styleFrom(primary: Colors.indigo,padding: EdgeInsets.only(left: 120,right: 120),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
            )
          ],
        ),
      )),
    );
  }
}
