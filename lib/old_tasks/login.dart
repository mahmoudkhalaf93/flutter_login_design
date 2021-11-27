import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttermyapp/compnents.dart';
import 'package:fluttermyapp/old_tasks/forget_your_password.dart';
import 'package:fluttermyapp/old_tasks/register.dart';

import 'messenger.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  static const Color welcomColor = Color(0xffe24949);
  static const Color blueColor = Color(0xFF3E4BAD);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool obscureText = true;
  IconData visibility = Icons.visibility_off;
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Form(
        key: formKey,
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Text(
                "Welcome Back !!",
                style: TextStyle(
                  color: Login.welcomColor,
                  fontSize: 20,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Login to Your Account ",
                  style: TextStyle(
                    color: Login.blueColor,
                    fontSize: 25,
                  ),
                ),
              ),
              // TextFormField(
              //   validator: (value) => emailValidator(value),
              //   decoration: InputDecoration(
              //     labelText: "Email",
              //     prefixIcon: Icon(Icons.email),
              //     border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(50)),
              //   ),
              // )
              myTextFormField(
                  controller: emailController,
                  validator: (value) => emailValidator(value),
                  prefixIcon: Icons.email,
                  label: "Email",
                  keyboardType: TextInputType.emailAddress),
              SizedBox(
                height: 10,
              ),
              // TextFormField(
              //   validator: (value) {
              //     if (value!.isEmpty) return "Password required";
              //   },
              //   obscureText: obscureText,
              //   decoration: InputDecoration(
              //     labelText: "Password",
              //     suffixIcon: InkWell(
              //         onTap: () {
              //           obscureText = !obscureText;
              //           visibility = obscureText
              //               ? Icons.visibility_off
              //               : Icons.visibility;
              //           // if(obscureText)
              //           //   visibility=Icons.visibility_off;
              //           // else
              //           //   visibility=Icons.visibility;
              //           setState(() {});
              //         },
              //         child: Icon(visibility)),
              //     prefixIcon: Icon(Icons.lock),
              //     border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(50)),
              //   ),
              // ),
              myTextFormField(
                  controller: passwordController,
                  validator: (value) => passwordValdiator(value),
                  prefixIcon: Icons.lock,
                  obscureText: obscureText,
                  label: "Password",
                  suffixIcon: IconButton(
                      onPressed: () {
                        obscureText = !obscureText;
                        visibility = obscureText
                            ? Icons.visibility_off
                            : Icons.visibility;
                        // if(obscureText)
                        //   visibility=Icons.visibility_off;
                        // else
                        //   visibility=Icons.visibility;
                        setState(() {});
                      },
                      icon: Icon(visibility))),

              Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ForgetYourPassword(),
                          ));
                    },
                    child: Text(
                      "Forgot Password ?",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )),

              // ElevatedButton(
              //   onPressed: () {
              //     if (formKey.currentState!.validate()) {
              //       String email = emailController.text;
              //       String password = passwordController.text;
              //       Navigator.push(
              //           context,
              //           MaterialPageRoute(
              //             builder: (context) => HomeScreen(email, password),
              //           ));
              //     }
              //   },
              //   child: const Text(
              //     "LOGIN",
              //   ),
              //   style: ElevatedButton.styleFrom(
              //       primary: Login.blueColor,
              //       elevation: 0,
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(50),
              //       ),
              //       padding: const EdgeInsets.symmetric(
              //           horizontal: 120, vertical: 12)),
              // ),

              myButtonWidget(
                  texts: "LOGIN",
                  onPressed: () =>
                    onLoginPressed(formKey.currentState!.validate())
                  ),

              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text("Don't have an account ?"),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ));
                        },
                        child: Text(
                          "Create Account !",
                          style: TextStyle(
                              color: Color(0xFF3A88D4),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }

  emailValidator(String? value) {
    if (value!.isEmpty) return "Email required";
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    return emailValid ? null : "email not valid";
  }

  passwordValdiator(String? value) {
    if (value!.isEmpty) return "Password required";
  }

  onLoginPressed(bool validate) {

    if (validate) {
      String email = emailController.text;
      String password = passwordController.text;
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Messenger(email, password),
          ));
    }
  }
}
