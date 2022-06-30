
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(41, 50, 55, 1.0),
      title: const Text('Profile'),

    ),
    body: Center(child: Text('Profile')),
    backgroundColor: Color.fromRGBO(41, 50, 55, 1.0),
  ); 
}