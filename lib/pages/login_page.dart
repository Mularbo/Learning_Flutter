import 'package:flutter/material.dart';

import 'package:fluttp/utilities/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      });
      await Future.delayed(
        Duration(seconds: 1),
      );
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset("assets/MobileLogin.png"),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Welcome! $name",
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: "Username",
                        hintText: "Enter Username",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == "") {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Password",
                          hintText: "Enter Password",
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder()),
                      validator: (value) {
                        if (value == "") {
                          return "password cannot be empty";
                        } else if (value != null && value.length < 6) {
                          return "password cannot be less then 6 characters";
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Material(
                color: changebutton ? Colors.blueGrey : Colors.blue,
                borderRadius: BorderRadius.circular(changebutton ? 50 : 5),
                child: InkWell(
                  //splashColor: Colors.grey,
                  onTap: () => moveToHome(context),

                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changebutton ? 35 : 110,
                    height: 40,
                    alignment: Alignment.center,
                    child: changebutton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
