import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts/login.dart';

class tentang extends StatelessWidget {
  const tentang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("About"),
      
    ),
    body: Text("01/06/2023"),
    );
  }
}