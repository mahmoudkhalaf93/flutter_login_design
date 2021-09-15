import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermyapp/verify_your_email.dart';

class ForgetYourPassword extends StatelessWidget {
  const ForgetYourPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 24,right: 24,bottom: 200),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Forgot Your Password ?",
              style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 8),
              child: Text(
                "Enter the Email address associated with your account",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            Container(
              height: 45,
              margin: EdgeInsets.only(top: 8,bottom: 30),
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
            ),
            ElevatedButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyYourEmail(),));},
              child: Text("Verify Email"),
              style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 100),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
            )
          ],
        ),
      ),
    );
  }
}
