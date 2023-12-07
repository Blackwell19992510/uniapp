import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String userName = "Muchi";
  String userEmail = "Muchi@gmail.com";
  String userBio = "Full Stack Developer";
  // You can add more fields as needed

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/profile.png'),
              ),
              const SizedBox(height: 16),
              Text(
                userName,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                userEmail,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              Text(
                userBio,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 24),
              SizedBox(
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  onPressed: () {
                    // Add any action you want when the button is pressed
                  },
                  child: const Text('Edit Profile'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
