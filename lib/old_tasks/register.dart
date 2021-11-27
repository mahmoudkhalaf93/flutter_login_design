import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttermyapp/compnents.dart';

import 'login.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Container(padding: EdgeInsets.all(16),
          child: Column(
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
          ),SizedBox(height: 16,),
          myTextFormField(validator: (value) {
            if (value!.isEmpty) return "required";
          },
              prefixIcon: Icons.email,
              label: "Email",
              controller: emailController),SizedBox(height: 16,),
          myTextFormField(validator: (value) {
            if (value!.isEmpty)
              return "required";
          },
              prefixIcon: Icons.lock,
              label: "Password",
              controller: passwordController),SizedBox(height: 16,),
          myTextFormField(validator: (value) {
            if(value!.isEmpty) return "required";
          },
              prefixIcon: Icons.lock,
              label: "Confirm Password",
              controller: confirmPasswordController),
      SizedBox(height: 16,),
      myButtonWidget(texts: "Create Account", onPressed:() {
        if(formKey.currentState!.validate()) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
        }
      }, ),SizedBox(height: 12,),
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
              onTap: () =>
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Login(),)),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
      )
      ],
    ),
        ),)
    ,
    );
  }
}
