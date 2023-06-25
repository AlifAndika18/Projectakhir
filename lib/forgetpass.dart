import 'dart:html';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts/login.dart';

class forgetpass extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              header(context),
              pass(context),
            ],
          ),
        ),
      )
      );
  }
  header(context){
  return Column(
    children: [
      Text("Forget Password",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold
       ),),
      Text("Masukkan E-mail anda yang telah terdaftar")
    ],
  );
  }
pass(context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: 'E-mail',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.email)
        ),
        obscureText: true,
      ),
      SizedBox(height: 20),
      ElevatedButton
      (onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginpage() ));
      },
      child: Text(
        "Enter",
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
        padding: EdgeInsets.symmetric(vertical: 16),
      ),
      )
    ],
  );
  }

}