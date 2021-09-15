import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttermyapp/forget_your_password.dart';
import 'package:fluttermyapp/home_screen.dart';
import 'package:fluttermyapp/register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  static const Color welcomColor = Color(0xffe24949);
  static const Color blueColor = Color(0xFF3E4BAD);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
                color: welcomColor,
                fontSize: 20,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Login to Your Account ",
                style: TextStyle(
                  color: blueColor,
                  fontSize: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password",
                    suffixIcon: const Icon(Icons.visibility),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)),
                  ),
                ),
              ),
            ),
            Container(
                alignment: Alignment.centerRight,
                margin: const EdgeInsets.only(bottom: 10),
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
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 40, right: 40, top: 8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: const Text(
                  "LOGIN",
                ),
                style: ElevatedButton.styleFrom(
                    primary: blueColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(14)),
              ),
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
    ));
  }
}
