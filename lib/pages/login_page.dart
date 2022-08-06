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
  final _formkey = GlobalKey<FormState>();
  moveToHome(BuildContext, context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.HomeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(children: [
          Image.asset(
            "assets/images/Hey.png",
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
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0),
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
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Username cannot be empty";
                      {
                        return null;
                      }
                    }
                  },
                ),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password lenght should be atleast 6";
                      }
                      {
                        return null;
                      }
                    })
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(changebutton ? 35 : 8),
            child: InkWell(
                splashColor: Colors.white,
                onTap: () => moveToHome(BuildContext, context),
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
                )),
          )
        ]),
      ),
    ));
  }
}
