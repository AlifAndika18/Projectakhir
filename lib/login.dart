import 'package:flutter/material.dart';
import 'package:uts/Daftar.dart';
import 'package:uts/forgetpass.dart';
import 'package:uts/menu.dart';
import 'package:http/http.dart' as http;


class Loginpage extends StatefulWidget{
  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool _obscureText= true;

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
              inputfield(context),
              forgotpasword(context),
              signup(context),
            ],
          ),
        ),
      )
      );
  }

  header(context){
  return Column(
    children: [
      Text("Saldo Digital",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold
       ),),
      Text("Masukkan data untuk login")
    ],
  );
  }

  inputfield(context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: 'Nama user',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.person)
        ),
      ),
      SizedBox(height: 20),
      TextField(
        decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.password_sharp),
          suffixIcon: GestureDetector(onTap: (){
           setState(() {
              _obscureText=!_obscureText;
           });
          },child: Icon(_obscureText 
          ?Icons.visibility 
          :Icons.visibility_off),
          )
        ),
        obscureText: _obscureText,
      ),
      SizedBox(height: 20),
      ElevatedButton
      (onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => menu()));
      },
      child: Text(
        "Login",
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

  forgotpasword(context){
    return TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>forgetpass()));}, child: Text("Forget Password"));
  }

  signup(context){
    return TextButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Daftar()));}, child: Text("Sign Up"));
      
  }
}