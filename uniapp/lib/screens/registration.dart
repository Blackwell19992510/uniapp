import 'package:flutter/material.dart';
import 'package:uniapp/screens/auth.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _displayNameController = TextEditingController();

  final AuthService _authService = AuthService();

  Future<void> _signUp() async {
    try {
      await _authService.signUpWithEmailAndPassword(_emailController.text,
          _passwordController.text, _displayNameController.text);

      // Navigate to the next screen or perform other actions
      print('User signed up successfully');
    } catch (e) {
      // Handle errors
      print('Failed to sign up: $e');
      // Show an error message to the user
      // You can use a Flutter SnackBar or showDialog for this purpose
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              obscureText: false,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _displayNameController,
              obscureText: false,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              height: 50,
              width: 270,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  onPressed: _signUp,
                  child: const Text("SIGN UP")),
            ),
          ],
        ),
      ),
    );
  }
}
