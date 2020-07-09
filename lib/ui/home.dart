import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomeScreenState();
    throw UnimplementedError();
  }
}

class HomeScreenState extends State<Home>{
  int _counter=0;
  void _incrementCounter(){
    setState((){
      _counter=_counter+1;
    });
  }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: AppBar(
        title: Text("Using buttons"),
      ),
      body: Center(child: Text("$_counter",style: TextStyle(color: _counter%2==0?Colors.blue:Colors.red,fontSize: 40),)),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,backgroundColor: Colors.blue,child: Icon(Icons.add),
      ),
    );
  }
}