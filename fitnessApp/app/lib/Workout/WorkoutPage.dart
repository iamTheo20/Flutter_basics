import 'package:app/Workout/workOutItems.dart';
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
   margin: const EdgeInsets.all(8),
   decoration: BoxDecoration(
    border: Border.all(color: Color.fromARGB(255, 175, 175, 175)),
    borderRadius: BorderRadius.circular(12),
    color: const Color.fromRGBO(41, 50, 55, 1.0),


   ),
  child: ListTile(
    contentPadding: EdgeInsets.all(16),
    leading: CircleAvatar(
      radius: 32,
      backgroundImage: NetworkImage(item.urlImage),
    ),
    title: Text(
      item.title,
      style: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255)),
    ),
  ),
  
  );
}

class WorkoutPage extends StatelessWidget {
  final List<ListItem> items = List.from(listItem); 

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromRGBO(41, 50, 55, 1.0),
      title: const Text('Workout'),
    ),
    backgroundColor: const Color.fromRGBO(41, 50, 55, 1.0),



    body: Center(
      child: Stack(
        alignment: Alignment.topRight,
        children: <Widget> [
   
          AnimatedList(
            padding: const EdgeInsets.only(top: 65),
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) => ListItemWidget(
              item: items[index],
              animation: animation,
              onClicked: () {},  
            ),
          ),   

    const IconButton(
            padding: EdgeInsets.only(top: 40),
            onPressed: null,
            icon: Icon(
              Icons.add,
              color: Colors.white ,
            ),
          ),
          
          Container(
            width: 380,
            height: 30,
            margin: const EdgeInsets.all(7),
            child:
      const FloatingActionButton(
            child: Text("START AN EMPTY WORKUT"),
            onPressed: null,
            backgroundColor: Colors.blue,
            shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.zero,
              ),
            ),
          ),

          Container()

        ],
      
      ),
    ),
  ); 
}