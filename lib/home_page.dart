import 'dart:ui';

import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  
  var num1=0, num2=0, oprate=0;

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');

  void addition(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      oprate = num1+num2;
    });
  }
  void subtract(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      oprate = num1-num2;
    });
  }
  void multiply(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      oprate = num1*num2;
    });
  }
  void divide(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      oprate = num1~/num2;
    });
  }

  void clear(){
    setState(() {
      num1=0;
      num2=0;
      t1.text='0';
      t2.text='0';
      oprate=0;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calculator',
        ),
      ),
      body: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Output: $oprate',
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.deepOrange[400],
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Number',
                ),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Number',
                ),
                controller: t2,
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 50),
                  MaterialButton(
                    child: Text('+',style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
                    onPressed: addition,
                    color: Colors.deepOrange[300],
                  ),
                  SizedBox(width: 20),
                  MaterialButton(
                    child: Text('-', style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),),
                    onPressed: subtract,
                    color: Colors.deepOrange[300],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 50),
                  MaterialButton(
                    child: Text('x',style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
                    onPressed: multiply,
                    color: Colors.deepOrange[300],
                  ),
                  SizedBox(width: 20),
                  MaterialButton(
                    child: Text('/',style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
                    onPressed: divide,
                    color: Colors.deepOrange[300],
                  ),
                ],
              ),
              SizedBox(height: 20),
              MaterialButton(
                child: Text('Clear',style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
                onPressed: clear,
                color: Colors.redAccent[200],
              ),
            ],
          )),
    );
  }
}
