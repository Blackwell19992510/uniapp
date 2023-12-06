import 'package:flutter/material.dart';
import 'package:uniapp/screens/login.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text("Registration"),
        ),
        backgroundColor: Colors.white,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: TextField(
              obscureText: false,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Enter Email",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: TextField(
              obscureText: false,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Choose Username",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(14.0),
            child: TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            width: 270,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 24),
                ),
                onPressed: () {},
                child: const Text("SIGN UP")),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
            child: const Text(
              "Already have an account!LOGIN",
            ),
          ),
        ]));
  }
}
