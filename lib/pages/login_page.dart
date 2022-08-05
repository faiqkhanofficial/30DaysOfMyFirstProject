import 'dart:html';

import 'package:flutter/material.dart';

import '../utlis/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(children: [
        Image.asset(
          "assets/images/Login_image.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Welcome! $name",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0),
          child: Column(
            children: [
              TextFormField(
                onChanged: ((value) {
                  name = value;
                  setState(() {});
                }),
                decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: () async {
            setState(() {
              changebutton = true;
            });
            await Future.delayed(Duration(seconds: 1));
            Navigator.pushNamed(context, MyRoutes.HomeRoute);
          },
          child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width: changebutton ? 35 : 100,
              height: 35,
              alignment: Alignment.center,
              child: changebutton
                  ? Icon(
                      Icons.done,
                      color: Colors.white,
                    )
                  : Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(changebutton ? 35 : 8))),
        )
        // ElevatedButton(
        //     child: Text("Login"),
        //     style: TextButton.styleFrom(minimumSize: Size(100, 40)),
        //     onPressed: () {
        //       Navigator.pushNamed(context, MyRoutes.HomeRoute);
        //     }),
      ]),
    ));
  }
}
