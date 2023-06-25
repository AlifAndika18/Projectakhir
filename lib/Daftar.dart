import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts/login.dart';

class Daftar extends StatelessWidget{
const Daftar ({super.key});

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
             
            ],
          ),
        ),
      )
      );
  }
}
header(context){
  return Column(
    children: [
      Text("Sign Up",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold
       ),),
      Text("Masukkan data anda")
    ],
  );
  }
 inputfield(context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: 'Username',
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
          hintText: 'E-Mail',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.email_outlined)
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
          prefixIcon: Icon(Icons.password_sharp)
        ),
        obscureText: true,
      ),
      SizedBox(height: 20),
      ElevatedButton
      (onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Loginpage()));
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
  