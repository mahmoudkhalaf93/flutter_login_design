import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermyapp/compnents.dart';

import 'login.dart';

class ResetPassword extends StatelessWidget {
  String code;

  ResetPassword(this.code, {Key? key}) : super(key: key);
  var newPasswordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Form(
          key: formKey,
          child: Container(
            height: 300,
            width: double.infinity,
            padding: EdgeInsets.only(left: 32, right: 32, bottom: 0),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "from previous used password",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                // TextFormField(
                //   obscureText: true,
                //   decoration: InputDecoration(
                //       labelText: "New Password",
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(50)),
                //       contentPadding: EdgeInsets.only(left: 20)),
                // ),

                myTextFormField(
                  validator: (value) {
                    if (value!.isEmpty) return "required";
                  },
                  prefixIcon: Icons.lock,
                  label: "New Password",
                  controller: newPasswordController,
                  obscureText: true,
                ),

                myTextFormField(
                    validator: (value) {
                      if (value!.isEmpty) return "required";
                    },
                    prefixIcon: Icons.lock,
                    label: "Confirm New Password",
                    controller: confirmPasswordController)
                // ,
                // TextFormField(
                //   obscureText: true,
                //   decoration: InputDecoration(
                //       labelText: "Confirm New Password",
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(50)),
                //       contentPadding: EdgeInsets.only(left: 20)),
                // )
                ,
                Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child:
                        // ElevatedButton(
                        //   onPressed: () => Navigator.push(
                        //       context,
                        //       MaterialPageRoute(
                        //         builder: (context) => Login(),
                        //       )),
                        //   child: Text("Reset Password"),
                        //   style: ElevatedButton.styleFrom(
                        //       padding: EdgeInsets.only(left: 80, right: 80),
                        //       shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(50)),
                        //       primary: Colors.indigo),
                        // ),
                        myButtonWidget(
                            texts: "Reset Password",
                            onPressed: () {
                              if(formKey.currentState!.validate())
                            Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Login(),
                                      ));
                            }))
              ],
            ),
          ),
        ),
      )),
    );
  }
}
