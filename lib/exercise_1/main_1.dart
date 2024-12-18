// Change Colors

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('Exercise 1'),
            ),
          ),
          body: Center(
            child: MyApp(0),
          ),
        )
    ),
    debugShowCheckedModeBanner: false,
  )
  );
}

class MyApp extends StatefulWidget{

  late int number;

  MyApp(this.number);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyState();
  }

}

class MyState extends State<MyApp>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(onPressed: click, backgroundColor: changeColor(),);
  }

  void click()
  {
    setState(() {
      widget.number = (widget.number + 1) % 3;
    });
  }

  Color changeColor()
  {
    if (widget.number == 0)
    {
      return Colors.red;
    }
    else if  (widget.number == 1)
    {
      return Colors.green;
    }
    else
    {
      return Colors.blue;
    }
  }

}