import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:uts/listviewisi.dart';
import 'package:uts/login.dart';

class riwayat extends StatelessWidget {
   riwayat({super.key});
  final List _post =['Transfer Uang -Rp.50.000 ke No rekening:110223124 atas nama Rusman Hadi',
  'Transfer Uang -Rp.130.000 ke No rekening:124253792 atas nama Ramzi Bayhaki'

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Riwayat Transaksi"),
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), 
        onPressed: () => Navigator.pop(context,false),
      ),
      ),
      body: ListView.builder(
        itemCount: _post.length
       ,itemBuilder: 
       (context, index){
        return isi(
          child: _post[index],);
      }),
    );
  }
}