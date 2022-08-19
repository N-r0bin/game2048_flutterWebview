import 'package:flutter/material.dart';
import 'package:game2048_webview/in_app_game_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("2048 Game"),
        backgroundColor: Colors.black26,
      ),
      backgroundColor: Colors.brown,
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white54,
            ),
          borderRadius: BorderRadius.all(Radius.circular(50))
        ),
        width: 600,
        height: 200,
        margin: const EdgeInsets.only(left: 100.0, right: 100.0, top: 170),
        child: TextButton(
          onPressed: () {
            Navigator.push(
                context,
            MaterialPageRoute(builder: (context) => InAppGamePage()),);
          },
          child: Center(
            child: Text("Play Game",
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),),
          ),
        ),
      ),
    );
  }
}
