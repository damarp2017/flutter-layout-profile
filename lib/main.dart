import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text("Profile"),
          centerTitle: true,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: null),
            IconButton(icon: Icon(Icons.group_work), onPressed: null),
          ],
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'img/man-3.png',
                  height: 150,
                  width: 150,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: <Widget>[
                  Text("Damar Permadany", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  Text("Cybereye Community"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.home, size: 50,),
                      Text("Home", style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.favorite, size: 50,),
                      Text("Favorite", style: TextStyle(fontSize: 20),)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.settings, size: 50,),
                      Text("Settings", style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Column(
                        children: <Widget>[
                          Image.asset("img/flutter-logo.png"),
                        ],
                      )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text("Flutter Classroom Beginners", style: TextStyle(
                        fontSize: 20,
                      ),),
                    )
                  ],
                ),
              )

            ],
          ),
        ));
  }
}
