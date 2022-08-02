

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Counter());
}



class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CatState();
  }
}

class _CatState extends State<Counter> {

  late int counter;
  late String catPath;

  @override
  void initState(){
    super.initState();
    counter = 0;
    catPath = 'assets/images/popcatclose.jpg';
  }

  void popCat() {
    setState(() {
      counter ++;
      catPath = 'assets/images/popcatopen.jpg';
    });
      Future.delayed(const Duration(milliseconds: 175),(){
        setState(() {
          catPath = 'assets/images/popcatclose.jpg';
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          title: Text("Counter: ${counter}"),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: <Widget>[
            Image.asset(catPath,height: 450,scale: 1,alignment: Alignment.center,
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 50,
              height: 50,
              child:ElevatedButton(
                style: ElevatedButton.styleFrom(
                ),
                onPressed: () => popCat(),
                child: const Text(
                  "pop!",
                  style: TextStyle(fontSize: 28),
// hello
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
