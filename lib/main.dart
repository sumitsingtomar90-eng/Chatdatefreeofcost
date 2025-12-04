import 'package:flutter/material.dart';

void main() {
  runApp(const ChatDateFreeOfCost());
}

class ChatDateFreeOfCost extends StatelessWidget {
  const ChatDateFreeOfCost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat Date Free of Cost",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat Date Free of Cost"),
      ),
      body: const Center(
        child: Text(
          "Welcome to Chat Date Free of Cost!",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
