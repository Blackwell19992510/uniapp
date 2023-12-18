import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uniapp/Screens/about.dart';
import 'package:uniapp/Screens/faculty.dart';
import 'package:uniapp/Screens/admission.dart';
import 'package:uniapp/Screens/academics.dart';
import 'package:uniapp/Screens/contacts.dart';
import 'package:uniapp/Screens/profile.dart';
import 'package:uniapp/Screens/settings.dart';
import 'package:uniapp/Screens/splashscreen.dart';
import 'package:uniapp/screens/registration.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyB5GUrjniohdYEqKENaQhOXyYlVlIQNvsw",
    appId: "1:315830415047:android:b353c8c592dd7e0b9498e2",
    messagingSenderId: "315830415047",
    projectId: "uniapp-9bfe2",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'uni',
      home: const Splashscreen(),
      routes: {
        '/profile': (context) => const Profile(),
        '/settings': (context) => const Settings(),
        '/about': (context) => const About(),
        '/faculty': (context) => const Faculty(),
        '/admission': (context) => const Admission(),
        '/academics': (context) => const Academics(),
        '/contacts': (context) => const Contacts(),
        '/registration': (context) => const SignUpPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
 // This trailing comma makes auto-formatting nicer for build methods.

