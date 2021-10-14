import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermyapp/compnents.dart';

import 'verify_your_email.dart';

class ForgetYourPassword extends StatelessWidget {
  ForgetYourPassword({Key? key}) : super(key: key);
  TextEditingController emailController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(
          margin: EdgeInsets.only(left: 24, right: 24, bottom: 200),
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
              // TextFormField(
              //   validator: (value) {
              //     if (value!.isEmpty) return  "email required";
              //     bool emailValid = RegExp(
              //         r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              //         .hasMatch(value);
              //     if(!emailValid)
              //       return "    email not valid";
              //   },
              //   decoration: InputDecoration(
              //       labelText: "Email",
              //       prefixIcon: Icon(Icons.email),
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.circular(50))),
              // ),
              myTextFormField(
                  validator: (value) {
                    if (value!.isEmpty) return "email required";
                    bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value);
                    if (!emailValid) return "    email not valid";
                    // return value!.isEmpty ? "email required" : null;
                  },
                  prefixIcon: Icons.email,
                  label: "Email",
                  controller: emailController),
              // ElevatedButton(
              //   onPressed: () {
              //   Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyYourEmail(),));},
              //   child: Text("Verify Email"),
              //   style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 100),
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(50))),
              // ),
              myButtonWidget(
                  texts: "Verify Email",
                  backgroundColor: Color(0xff1e2732),
                  height: 100,
                  width: 10,
                  onPressed: () {
                    //  formKey.currentState!.validate();
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => VerifyYourEmail(),
                          ));
                    }
                  })
            ],
          ),
        ),
      ),
    );
  }
}
