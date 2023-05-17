import 'package:flutter/material.dart';
import 'package:belajar_navigasi/secondscreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Layar Pertama'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Menuju layar kedua'),
          onPressed: (){
            Navigator.pushNamed(context, '/second',
              arguments: 'Hello from first screen');
          }
        )
      ),
    );
  }
}