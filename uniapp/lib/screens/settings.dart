import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'General Settings',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: const Text('Dark Mode'),
              value: false, // Replace with your logic for dark mode
              onChanged: (value) {
                // Handle dark mode toggle
                //darkTheme:
                ThemeData.dark();
              },
            ),
            const Divider(),
            const Text(
              'Notification Settings',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SwitchListTile(
              title: const Text('Receive Notifications'),
              value: true, // Replace with your logic for notifications
              onChanged: (value) {
                // Handle notification toggle
              },
            ),
            const Divider(),
            const Text(
              'Account Settings',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ListTile(
              title: const Text('Change Password'),
              onTap: () {
                // Navigate to change password page
              },
            ),
          ],
        ),
      ),
    );
  }
}
