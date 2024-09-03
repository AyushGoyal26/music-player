import 'package:flutter/material.dart';
import 'package:task/pages/home.dart';
import 'package:task/pages/library.dart';
import 'package:task/pages/search.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  final tabs=[Home(),Search(), Library()];
  int curr_ind=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 6, 6),
      // appBar: AppBar(
      //   leading: Icon(Icons.headphones)
      //   ,title: Text("MELODY TUNER"),
      
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curr_ind,
        onTap: (currentindex){
          print(curr_ind);
          curr_ind=currentindex;
          setState(() {
            
          });
        }
        ,selectedLabelStyle: TextStyle(color: Colors.white)
        ,backgroundColor: Colors.black45,items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home,color: Colors.white),label: "HOME"),
        BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.white),label: "SEARCH"),
        BottomNavigationBarItem(icon: Icon(Icons.library_music,color: Colors.white),label: "LIBRARY")
      ]),
      body: tabs[curr_ind],

      );
  }
}