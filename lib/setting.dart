import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts/login.dart';

class pengaturan extends StatefulWidget {
  const pengaturan({super.key});

  @override
  State<pengaturan> createState() => _pengaturanState();
}

class _pengaturanState extends State<pengaturan> {
  bool _switch = false;
  ThemeData _dark = ThemeData(brightness: Brightness.dark);
  ThemeData _light = ThemeData(brightness: Brightness.light);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
                  theme : _switch ? _dark : _light,
      home: Scaffold(
      appBar: 
    AppBar(
      automaticallyImplyLeading: true,
      leading: IconButton(icon: Icon(Icons.arrow_back_ios),
      onPressed: () => Navigator.pop(context,false),
      ),
      title: Text("Settings"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.dark_mode_outlined),
          Text("Dark mode", style: TextStyle(fontWeight: FontWeight.bold),
          ),
        Switch(value: _switch, onChanged: (_newvalue){
          setState(() {
             _switch = _newvalue;   
      }
        );
        })
        ],
      ),
    ),
    )
    );
  }
}