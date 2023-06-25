import 'package:flutter/material.dart';

class isi extends StatelessWidget {
  
  final String child;
  const isi({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          color: Color.fromARGB(255, 177, 150, 92), 
          child: Text(child),
        ),
    );
  }
}