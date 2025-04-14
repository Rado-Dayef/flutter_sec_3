import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, foregroundColor: Colors.black, title: Text("Buttons")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                debugPrint("Elevated Button Clicked");
              },
              style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
              child: Text("Click Me"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outlined Button Clicked");
              },
              style: OutlinedButton.styleFrom(foregroundColor: Colors.blue),
              child: Text("Click Me"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button Clicked");
              },
              style: TextButton.styleFrom(foregroundColor: Colors.blue),
              child: Text("Click Me", style: TextStyle(fontSize: 30)),
            ),
            IconButton(
              onPressed: () {
                debugPrint("Icon Button Clicked");
              },
              style: IconButton.styleFrom(foregroundColor: Colors.blue),
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
