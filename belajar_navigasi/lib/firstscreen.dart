import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Layar Pertama'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){},
          child: Text('menuju layar kedua'),
           ),
        ),
    );
  }
}