import 'package:contador/contador.dart';
import 'package:contador/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ChangeNotifierProvider<Contador>(create: (context)=>Contador(),
      child: HomePage())
    );
  }
}