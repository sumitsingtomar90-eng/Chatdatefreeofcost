import 'package:flutter/material.dart';

class MatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Matches"),
        backgroundColor: Colors.pink,
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Matches ❤️",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  matchTile("Aisha", "https://i.pravatar.cc/150?img=32"),
                  matchTile("Simran", "https://i.pravatar.cc/150?img=45"),
                  matchTile("Neha", "https://i.pravatar.cc/150?img=28"),
                  matchTile("Sana", "https://i.pravatar.cc/150?img=12"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget matchTile(String name, String img) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(img),
          ),
          SizedBox(width: 15),
          Text(
            name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Spacer(),
          Icon(Icons.favorite, color: Colors.pink),
        ],
      ),
    );
  }
}
