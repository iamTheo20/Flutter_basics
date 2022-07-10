

import 'ProfilePage.dart';
import 'ExercisePage.dart';
import 'HistoryPage.dart';
import 'package:app/Workout/WorkoutPage.dart';
import 'MeasurePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  int currentindex = 0;
  final screens = [ 
    ProfilePage(),
    HistoryPage(),
    WorkoutPage(),
    ExercisePage(),
    MeasurePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: currentindex,
        children: screens,
      ),


      bottomNavigationBar: BottomNavigationBar(
      onTap: (index) => setState(()  => currentindex = index),
      backgroundColor: Color.fromRGBO(41, 50, 55, 1.0), 
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentindex,
      items: const [
      BottomNavigationBarItem(
      
       icon: Icon(Icons.account_circle_sharp),
       label: 'Profile',
       

        ),
      BottomNavigationBarItem(
       icon: Icon(Icons.access_time),
       label: 'History',
       backgroundColor: Colors.white,
        ),        
      BottomNavigationBarItem(
       icon: Icon(Icons.add),
       label: 'Workout',
       backgroundColor: Colors.white,
        ), 

      BottomNavigationBarItem(
       icon: Icon(Icons.fitness_center),
       label: 'Exercises',
       backgroundColor: Colors.white,
        ),

      BottomNavigationBarItem(
       icon: Icon(Icons.rule_sharp),
       label: 'Measure',
       backgroundColor: Colors.white,
        ),

        

      ],






      
      
      ),
      backgroundColor: Color.fromRGBO(41, 50, 55, 1.0),
    );
  }
}
