import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class menu extends StatefulWidget {
  @override
  _menuState createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 70, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: Colors.blueGrey),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(
                          "images/people.jpg",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                IconButton(
                    onPressed: () {
                      print("menu");
                    },
                    icon: Icon(
                      Icons.more_vert,
                      size: 30,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 35, right: 20),
            child: Center(
              child: Text(
                "Find the product that is perfect for you!",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.only(left: 20, right: 20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                labelText: "Search",
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Beginners",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 270,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                makeItem(
                    image: 'images/camera1.jpg',
                    title:
                        "NIKON D610 3.2 inch Screen 24.3 MP Digital SLR Camera Black"),
                makeItem(
                    image: 'images/camera2.jpg',
                    title: "RX100 VII Compact Camera, Unrivaled AF"),
                makeItem(
                    image: 'images/camera3.jpg',
                    title: "CANON EOS 250D BK 18-55 IS STM SLR Camera"),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.blueGrey[300],
        backgroundColor: Colors.teal,
        buttonBackgroundColor: Colors.teal,
        height: 70.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30.0,
            color: Colors.white,
          ),
          Icon(
            Icons.chat_bubble,
            size: 30.0,
            color: Colors.white,
          ),
          Icon(
            FontAwesomeIcons.heart,
            size: 30.0,
            color: Colors.white,
          ),
          Icon(
            Icons.photo_camera,
            size: 30.0,
            color: Colors.white,
          ),
          Icon(
            Icons.location_on,
            size: 30.0,
            color: Colors.white,
          ),
        ],
      ),
    );
  }

  Widget makeItem({image, title}) {
    return AspectRatio(
      aspectRatio: 2.3 / 2.7,
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
