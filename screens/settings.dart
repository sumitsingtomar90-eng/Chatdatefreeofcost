import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkMode = false;
  bool notifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings ⚙️"),
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        children: [

          // Profile section
          ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.pink.shade200,
              child: Icon(Icons.person, color: Colors.white),
            ),
            title: Text("Edit Profile"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),

          Divider(),

          // Notifications toggle
          SwitchListTile(
            title: Text("Enable Notifications"),
            value: notifications,
            activeColor: Colors.pink,
            onChanged: (value) {
              setState(() {
                notifications = value;
              });
            },
            secondary: Icon(Icons.notifications),
          ),

          // Dark Mode toggle
          SwitchListTile(
            title: Text("Dark Mode"),
            value: darkMode,
            activeColor: Colors.pink,
            onChanged: (value) {
              setState(() {
                darkMode = value;
              });
            },
            secondary: Icon(Icons.dark_mode),
          ),

          Divider(),

          ListTile(
            leading: Icon(Icons.lock),
            title: Text("Privacy & Safety"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),

          ListTile(
            leading: Icon(Icons.report, color: Colors.red),
            title: Text("Report / Block Users"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {},
          ),

          Divider(),

          // Logout button
          ListTile(
            leading: Icon(Icons.logout, color: Colors.red),
            title: Text(
              "Logout",
              style: TextStyle(color: Colors.red),
            ),
            onTap: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
        ],
      ),
    );
  }
}
