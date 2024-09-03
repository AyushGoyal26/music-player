import 'package:flutter/material.dart';
import 'package:task/models/music.dart';
import 'package:task/services/category.dart';
import 'package:task/services/category_operations.dart';
import 'package:task/services/music_operations.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  Widget createCategory(Category category) {
    return Container(
      color: Colors.blueGrey.shade400,
      child: Row(
        children: [
          Container(height: 100,width: 50, child: Image.network(category.imageURL)),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              category.name,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  createlist() {
    List<Category> categorylist = CategoryOperations.getcategories();
    List<Widget> categories = categorylist
        .map((Category category) => createCategory(category))
        .toList();
    return categories;
  }

  Widget createmusic(Music music) {
    return Padding(
      padding: EdgeInsets.all(5),
      child: Column(children: [
        Container(
          height: 140,width: 140,
          child: Image.network(
            music.image,
            fit: BoxFit.cover,
          ),
        ),
        Text(music.name,style: TextStyle(color: Colors.white),),
        Text(music.desc,style: TextStyle(color: Colors.white))
      ]),
    );
  }

  Widget createmusiclist(String label) {
    List<Music> musiclist = MusicOperations.getmusic();
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(label,style: TextStyle(color: Colors.white,fontSize: 20),), Container(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return createmusic(musiclist[index]);
              },
              itemCount: musiclist.length),
        ),]
      ),
    );
  }

  Widget creategrid() {
    return Container(
        padding: EdgeInsets.all(10),
        height: 180,
        child: GridView.count(
          childAspectRatio: 5 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: createlist(),
          crossAxisCount: 2,
        ));
  }

  Widget createappbar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message),
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 10), child: Icon(Icons.settings))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        child: Column(
          children: [
            createappbar('Good Morning'),
            SizedBox(
              height: 5,
            ),
            creategrid(),
            createmusiclist('Music For You'),
            createmusiclist('Popular Songs')
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blueGrey.shade300, Colors.black12],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.3, 0.5])),
      )),
    );
  }
}
