import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:uniapp/Screens/drawer.dart';
import 'package:uniapp/screens/registration.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signIn() async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      // User login successful
      print('User logged in: ${userCredential.user?.uid}');
    } catch (e) {
      // Handle errors during login
      print('Failed to log in: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    var emailController = _emailController;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 25,
            ),
            const Icon(
              Icons.lock,
              size: 60,
              color: Colors.green,
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller: emailController,
                obscureText: false,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    hintText: "Email",
                    border: OutlineInputBorder(),
                    filled: true),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                    hintText: "Password",
                    border: OutlineInputBorder(),
                    filled: true),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(14.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("forgot password?"),
                ],
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
                  onPressed: _signIn,
                  child: const Text("LOGIN")),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              },
              child: const Text(
                "Don't have an account?SIGN UP",
              ),
            ),
          ],
        ),
        bottomNavigationBar: const BottomAppBar(
          child: SizedBox(
            height: 50.0,
            child: Center(
              child: Text(
                '© 2023 Star University',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ));
  }
}
