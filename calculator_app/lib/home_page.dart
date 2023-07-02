import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage>{
  var num1 = 0;
  var num2 = 0;
  var ans = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAdd() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1+num2;
    });
  }

  void doSub(){
    setState(() {
      num1= int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1-num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1*num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      ans = num1~/num2; // Truncated/Round to int if the answer is in decimal
    });
  }

  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      ans = 0;
    });
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator App"),
      ),
      body: new Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "enter number 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "enter number 2"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [
                new MaterialButton(
                    onPressed: doAdd,
                    child: new Text("+"),
                  color: Colors.cyanAccent
                ),
                new MaterialButton(
                    onPressed: doSub,
                    child: new Text("-"),
                    color: Colors.cyanAccent
                ),
                new MaterialButton(
                    onPressed: doMul,
                    child: new Text("*"),
                  color: Colors.cyanAccent,
                ),
                new MaterialButton(
                    onPressed: doDiv,
                    child: new Text("/"),
                    color: Colors.cyanAccent,
                )
              ],
            ),
            new Padding(
                padding: const EdgeInsets.only(top: 40.0)
            ),
            new Text(
                "Output : $ans",
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.blueGrey,
                ),
            ),
            new Padding(
                padding: const EdgeInsets.only(top: 40.0)
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                new MaterialButton(
                    onPressed: doClear,
                    child: new Text("Clear"),
                    color: Colors.cyanAccent,
                )
              ],
            )
          ],
        ),
        ),
      );
  }
}