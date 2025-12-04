import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        backgroundColor: Colors.pink,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.pink,
              child: Icon(Icons.person, size: 70, color: Colors.white),
            ),

            SizedBox(height: 20),

            Text(
              "User Name",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),
            Text(
              "email@example.com",
              style: TextStyle(fontSize: 16),
            ),

            SizedBox(height: 30),

            ListTile(
              leading: Icon(Icons.edit),
              title: Text("Edit Profile"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Change Password"),
              onTap: () {},
            ),

            ListTile(
              leading: Icon(Icons.logout, color: Colors.red),
              title: Text("Logout"),
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
