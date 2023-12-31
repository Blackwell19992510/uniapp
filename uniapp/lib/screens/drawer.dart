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
          title: const Text('Star University'),
          titleTextStyle: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          backgroundColor: Colors.green,
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(padding: EdgeInsets.zero, children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.green),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('images/profile.png'),
                          ),
                          Text('Muchi'),
                          Text('muchi@gmail.com')
                        ]),
                  ),
                )),
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
        //End of drawer
        //Adding the Homepage here
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('images/home.jpg'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your navigation logic here
                },
                child: const Text('Apply'),
              ),
            ],
          ),
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
