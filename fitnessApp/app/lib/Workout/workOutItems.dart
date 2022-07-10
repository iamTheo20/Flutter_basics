import 'package:app/ExercisePage.dart';
import 'package:flutter/material.dart';

class ListItem {
  final String title;
  final String urlImage;

  const ListItem({
    required this.title,
    required this.urlImage,
  });
}

class BoxItem {
  final String title;
  final String date;
  final List workout;

  const BoxItem({
    required this.title,
    required this.date,
    required this.workout,

   });
}

final List<BoxItem> boxItem = [
  const BoxItem(title: "Legs", date: "yesterday", workout:  ["squat","pistolSquat","jumpsquat" ] )
];

final List<ListItem> listItem = [
  const ListItem(
      title: 'Exercise',
      urlImage:
          'https://media.wired.com/photos/627da1085d49787abdf713b4/master/pass/Pakistani-Gamers-Want-a-Seat-at-the-Table-Culture-shutterstock_1949862841.jpg'),
  const ListItem(title: 'bread', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
  const ListItem(title: 'Exercise', urlImage: 'https://bit.ly/3c19Pwn'),
];
