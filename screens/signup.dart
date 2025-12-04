import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Create Account ❤️",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            // Name input
            TextField(
              decoration: InputDecoration(
                labelText: "Full Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            // Email input
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            // Password
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 25),

            // Signup Button
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.pink,
              ),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 18),
              ),
            ),

            SizedBox(height: 20),

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                "Already have an account? Login",
                style: TextStyle(color: Colors.blue),
              ),
            )
          ],
        ),
      ),
    );
  }
}
