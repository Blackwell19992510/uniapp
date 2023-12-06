import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        /*leading: Container(
          //margin: const EdgeInsets.only(right: 10),
          child: Image.asset('images/icon.jpg'),
        ),*/
        title: const Text('Star University'),
        titleTextStyle: const TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(padding: EdgeInsets.zero, children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    image: AssetImage("images/profile.png"),
                    fit: BoxFit.cover)),
            accountName: Text('Muchi'),
            accountEmail: Text('muchi@gmail.com'),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
          ListTile(
            leading: const Icon(Icons.diversity_3),
            title: const Text('Faculty & Staff'),
            onTap: () {
              Navigator.pushNamed(context, '/faculty');
            },
          ),
          ListTile(
            leading: const Icon(Icons.feed),
            title: const Text('Admission'),
            onTap: () {
              Navigator.pushNamed(context, '/admission');
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text('Academics'),
            onTap: () {
              Navigator.pushNamed(context, '/academics');
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_ic_call),
            title: const Text('Contacts'),
            onTap: () {
              Navigator.pushNamed(context, '/contacts');
            },
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text('Search'),
            onTap: () {
              Navigator.pushNamed(context, '/search');
            },
          ),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
            onTap: () {
              Navigator.pushNamed(context, '/about');
            },
          ),
          ListTile(
            leading: const Icon(Icons.brightness_low_rounded),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          )
        ]),
      ),
    );
  }
}
