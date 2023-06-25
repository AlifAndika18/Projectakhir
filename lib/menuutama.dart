import 'dart:html';
import 'dart:js_util';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts/login.dart';

class menuutama extends StatefulWidget {
  const menuutama({super.key});

  @override
  State<menuutama> createState() => _menuutamaState();
}

class _menuutamaState extends State<menuutama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Container(margin: EdgeInsets.all(180.0), child: Column(
      children: [SizedBox(width: 100,),Text('Saldo Anda',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),Text("Rp.0-")],
      ),
      ),
    );
  }
}