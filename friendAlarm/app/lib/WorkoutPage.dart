
import 'package:app/ExercisePage.dart';
import 'package:flutter/material.dart';



class ListItemWidget extends StatelessWidget {
  final ListItem item;
  final Animation<double> animation;
  final VoidCallback? onClicked; 

  const ListItemWidget({
    required this.item,
    required this.animation,
    required this.onClicked,
    Key? key,

  }) : super(key: key); 

  @override
  Widget build(BuildContext context) => buildItem();

  Widget buildItem() => Container(
   margin: EdgeInsets.all(8),
   decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Colors.white,
   ),
  child: ListTile(
    contentPadding: EdgeInsets.all(16),
    leading: CircleAvatar(
      radius: 32,
      backgroundImage: NetworkImage(item.urlImage),
    ),
    title: Text(
      item.title,
      style: TextStyle(fontSize: 20, color: Colors.black),
    ),
  ),
  
  );
}

class ListItem {
  final String title;
  final String urlImage;

  const ListItem({
    required this.title,
    required this.urlImage,
  });

}

final List<ListItem> listItem =[
  const ListItem(
    title: 'gaming', 
    urlImage:'https://media.wired.com/photos/627da1085d49787abdf713b4/master/pass/Pakistani-Gamers-Want-a-Seat-at-the-Table-Culture-shutterstock_1949862841.jpg' ),
  const ListItem(
    title: 'bread', 
    urlImage:'https://www.thespruceeats.com/thmb/aKWwztjCoTsiPzayXvDYx6QLyOs=/4288x2412/smart/filters:no_upscale()/loaf-of-bread-182835505-58a7008c5f9b58a3c91c9a14.jpg' ),

];

class WorkoutPage extends StatelessWidget {
  final List<ListItem> items = List.from(listItem); 

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(41, 50, 55, 1.0),
      title: Text('Workout'),

    ),
    backgroundColor: Color.fromRGBO(41, 50, 55, 1.0),

    body: AnimatedList(
      initialItemCount: items.length,
      itemBuilder: (context, index, animation) => ListItemWidget(
        item: items[index],
        animation: animation,
        onClicked: () {},  
      ),

    ),
    
    

    
    
  ); 
}