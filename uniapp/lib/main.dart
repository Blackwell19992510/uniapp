import 'package:flutter/material.dart';
import 'package:uniapp/Screens/about.dart';
import 'package:uniapp/Screens/faculty.dart';
import 'package:uniapp/Screens/admission.dart';
import 'package:uniapp/Screens/academics.dart';
import 'package:uniapp/Screens/contacts.dart';
import 'package:uniapp/Screens/home.dart';
import 'package:uniapp/Screens/profile.dart';
import 'package:uniapp/Screens/registration.dart';
import 'package:uniapp/Screens/search.dart';
import 'package:uniapp/Screens/settings.dart';
import 'package:uniapp/Screens/splashscreen.dart';

void main() {
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
        //  '/': (context) => const Splashscreen(),
        '/home': (context) => const Homescreen(),
        '/profile': (context) => const Profile(),
        '/search': (context) => const Search(),
        '/settings': (context) => const Settings(),
        '/about': (context) => const About(),
        '/faculty': (context) => const Faculty(),
        '/admission': (context) => const Admission(),
        '/academics': (context) => const Academics(),
        '/contacts': (context) => const Contacts(),
        '/registration': (context) => const Registration(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
} // This trailing comma makes auto-formatting nicer for build methods.

