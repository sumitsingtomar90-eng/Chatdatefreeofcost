import 'package:flutter/material.dart';
import '../screens/home.dart';
import '../screens/login.dart';
import '../screens/signup.dart';
import '../screens/profile.dart';
import '../screens/chat.dart';
import '../screens/match.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ChatDateFreeOfCost',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignupScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/chat': (context) => ChatScreen(),
        '/match': (context) => MatchScreen(),
      },
    );
  }
}
