import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts/login.dart';

class transaksi extends StatelessWidget {
const transaksi ({super.key});

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(appBar: AppBar(title: Text('Transaksi'),
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), 
        onPressed: () => Navigator.pop(context,false),
      ),
      ),
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
      Text("Transaksi",
      style: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold
       ),
       ),
    ],
  );
  }
 inputfield(context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      TextField(
        decoration: InputDecoration(
          hintText: 'Rekening Tujuan',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.payment)
        ),
      ),
      SizedBox(height: 20),
      TextField(
        decoration: InputDecoration(
          hintText: 'Masukkan Nominal',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none
          ),
          fillColor: Theme.of(context).primaryColor.withOpacity(0.1),
          filled: true,
          prefixIcon: Icon(Icons.payments_outlined)
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
      ElevatedButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Container(
              padding: EdgeInsets.all(10),
              height: 90,
              decoration: BoxDecoration(
                color: Color.fromARGB(172, 96, 160, 213),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              child: Row(
                children: [
                  SizedBox(width: 48,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Transaksi Berhasil",style:TextStyle(fontSize: 40),),
                    ],
                  ),
                ],
              )),
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.transparent,
            elevation: 0,
            )
            );
      }, child: const Text("Kirim"))
    ],
  );
  }
  