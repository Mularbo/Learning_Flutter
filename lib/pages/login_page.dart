import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:fluttp/utilities/routes.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changebutton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Username",
                      hintText: "Enter Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Password",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                setState(() {
                  changebutton = true;
                });
                await Future.delayed(
                  Duration(seconds: 1),
                );
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                width: changebutton ? 55 : 150,
                height: 40,

                alignment: Alignment.center,

                child: changebutton
                    ? const Icon(Icons.done)
                    : const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                decoration: BoxDecoration(
                  //shape: changebutton ? BoxShape.circle : BoxShape.rectangle,
                  color: changebutton ? Colors.grey : Colors.redAccent,
                  borderRadius: BorderRadius.circular(5),
                ),
                //ElevatedButton(
                //style: TextButton.styleFrom(
                //minimumSize: const Size(120, 40),
                //),
                //onPressed: () {
                //Navigator.pushNamed(context, MyRoutes.homeRoute);
                //},
                //child: const Text("Login"),
                //)
              ),
            )
          ],
        ),
      ),
    );
  }
}
