// ignore_for_file: non_constant_identifier_names, duplicate_ignore, prefer_final_fields, unnecessary_null_comparison, avoid_print, prefer_const_constructors, unnecessary_new

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State createState() => LoginState();
}

class LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();
  // ignore: unused_field

  var showDialogBox = false;
  // Initially password is obscure

  String _password = '';
  String _email = '';
  bool _obscureText = true;
  var device_id = '';

  // ignore: non_constant_identifier_names
  bool email_verify = true;
  // ignore: non_constant_identifier_names
  bool password_verify = true;

  @override
  void initState() {
    super.initState();
  }

  bool isValidEmail() {
    if ((_email == null) || (_email.isEmpty)) {
      return true;
    }
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(_email);
  }

  bool isValidPassword() {
    if ((_password == null) || (_password.isEmpty)) {
      return true;
    }
    // ignore: null_aware_before_operator
    return (_password.length > 2);
  }

  void performLogin() {
    //login here
    if ((_emailController.text == null) || (_emailController.text == '')) {
      setState(() {
        email_verify = false;
      });
    }
    if (RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(_emailController.text) ==
        false) {
      setState(() {
        email_verify = false;
      });
    } else {
      setState(() {
        email_verify = true;
      });
    }
    if ((_pwController.text == null) || (_pwController.text == '')) {
      setState(() {
        password_verify = false;
      });
    }
    // ignore: null_aware_before_operator
    else if (_pwController.text.length <= 2) {
      setState(() {
        password_verify = false;
      });
    } else {
      password_verify = true;
    }

    if (password_verify == true && email_verify == true) {
      //  showLoading(context);
      print('password = true');
      print('email = true');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Login',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                'Log into your Wave account to start listening to your favorite podcasts or shows.',
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                cursorColor: Colors.blueAccent,
                controller: _emailController,
                decoration: InputDecoration(
                    errorText: isValidEmail() && email_verify
                        ? null
                        : "Invalid Email Address",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        )),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: 'What is your email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0))),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.blueAccent,
                obscureText: _obscureText,
                controller: _pwController,
                decoration: InputDecoration(
                    errorText: isValidPassword() && password_verify
                        ? null
                        : "Password is too short",
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        )),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        )),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    hintText: 'What is your password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0))),
              ),
            ),
            SizedBox(height: 60),
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: ButtonTheme(
                  minWidth: 320.0,
                  height: 50.0,
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    onPressed: () {
                      performLogin();

                      /*   hitService(
                          _emailController.text, _pwController.text, context); */
                    },
                    textColor: Colors.white,
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 18.0, bottom: 20),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "New to wave ? ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      TextSpan(
                        recognizer: new TapGestureRecognizer()..onTap = () {},
                        text: 'Sign up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
