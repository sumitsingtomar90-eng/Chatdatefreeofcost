import 'package:flutter/material.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Matches"),
        backgroundColor: Colors.pink,
      ),
      body: ListView(
        children: const [
          MatchTile(name: "Aarohi", message: "You matched! Say hi 👋"),
          MatchTile(name: "Riya", message: "New match ❤️"),
          MatchTile(name: "Neha", message: "You both liked each other!"),
        ],
      ),
    );
  }
}

class MatchTile extends StatelessWidget {
  final String name;
  final String message;

  const MatchTile({super.key, required this.name, required this.message});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.pinkAccent,
        child: Text(
          name[0],
          style: const TextStyle(fontSize: 22, color: Colors.white),
        ),
      ),
      title: Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(message),
      onTap: () {},
    );
  }
}
