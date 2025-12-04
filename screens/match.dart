import 'package:flutter/material.dart';

class MatchScreen extends StatelessWidget {
  final List<Map<String, dynamic>> people = [
    {"name": "Aarav", "age": 22, "img": "https://i.pravatar.cc/150?img=1"},
    {"name": "Riya", "age": 20, "img": "https://i.pravatar.cc/150?img=2"},
    {"name": "Kabir", "age": 24, "img": "https://i.pravatar.cc/150?img=3"},
    {"name": "Ananya", "age": 21, "img": "https://i.pravatar.cc/150?img=4"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find Matches ❤️"),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: people.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 10),
            shape: RoundedRectangleBorder(
