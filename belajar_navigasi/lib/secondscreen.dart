import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Layar Kedua'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){},
          child: Text('kembali'),
           ),
        ),
    );
  }
}