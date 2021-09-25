import 'dart:developer';

import 'package:contador/contador.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';
//import 'package:contador/provider'

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contador v2.0'),
        ),
        body: Column(
          children:[
            Container(
              margin: EdgeInsets.all(10.0),
              height: 550,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[300],
              ),
              child: 
                Consumer<Contador>(
                  builder: (context, counter, child){
                    return Text("${counter.count}",
                      style: TextStyle(
                        fontSize: 75,
                        color: counter.color
                      )
                    );
                  },
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: (){
                    context.read<Contador>().changeColor(Colors.black);
                  }, 
                  child: Text("Black"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    primary: Colors.white
                  ),
                ),
                TextButton(
                  onPressed: (){
                    context.read<Contador>().changeColor(Colors.red);
                  }, 
                  child: Text("Red"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    primary: Colors.white
                  ),
                ),
                TextButton(
                  onPressed: (){
                    context.read<Contador>().changeColor(Colors.green);
                  }, 
                  child: Text("Green"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                    primary: Colors.white
                  ),
                ),
                TextButton(
                  onPressed: (){
                    context.read<Contador>().changeColor(Colors.blue);
                  }, 
                  child: Text("Blue"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    primary: Colors.white
                  ),
                )
              ],
            )
          ] 

        ),
        
        floatingActionButton: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: (){
                    context.read<Contador>().increment();
                  },
                  tooltip: "Sumar",
                  child: Icon(Icons.add),
                ),
                //SizedBox(height: 20),
                FloatingActionButton(
                  onPressed: (){
                    context.read<Contador>().decrement();
                  },
                  tooltip: "Restar",
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton(
                  onPressed: (){
                    context.read<Contador>().restartCounter();
                  },
                  tooltip: "Reiniciar",
                  child: Icon(Icons.restart_alt)
                )
              ],
            )
          ],
        )
      );
  }
}