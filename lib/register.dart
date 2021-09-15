import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Wellcome !!",
            style: TextStyle(color: Colors.red, fontSize: 18),
          ),
          Text(
            "Create Your Account",
            style: TextStyle(
              color: Colors.indigo,
              fontSize: 20,
            ),
          ),
          Container(
            height: 65,
            padding: const EdgeInsets.only(right: 18, left: 18, top: 16),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          Container(
            height: 65,
            padding: const EdgeInsets.only(right: 18, left: 18, top: 16),
            child: TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Password",
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          Container(
            height: 65,
            padding: const EdgeInsets.only(right: 18, left: 18, top: 16),
            child: TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Confirm Password",
                  suffixIcon: Icon(Icons.visibility),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50))),
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 60, vertical: 18),
            child: ElevatedButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));},
              child: Text("Create Account"),
              style: ElevatedButton.styleFrom(
                primary: Colors.indigo,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                padding: EdgeInsets.symmetric(vertical: 11),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Already have an Account ?",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(
                width: 8,
              ),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),)),child: Text(
                  "Login",
                  style: TextStyle(color: Colors.blue),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
