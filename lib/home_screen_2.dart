import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  int counter = 0;

  @override
  initState() {
    debugPrint("Init State");
    super.initState();
  }

  @override
  void dispose() {
    debugPrint("Dispose State");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, foregroundColor: Colors.black, title: Text("Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(counter.toString(), style: TextStyle(color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold)),
            InkWell(
              onTap: () {
                setState(() {
                  counter++;
                });
                debugPrint(counter.toString());
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                child: Text("Increment", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                if (counter > 0) {
                  setState(() {
                    counter--;
                  });
                } else {
                  debugPrint("Counter can't ba less then 0");
                }
                debugPrint(counter.toString());
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                child: Text("Decrement", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                setState(() {
                  counter = 0;
                });
                debugPrint(counter.toString());
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                child: Text("Reset", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                child: Text("Back Button", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
