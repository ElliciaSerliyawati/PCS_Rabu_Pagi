import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String data;
  const SecondScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Layar Kedua'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              child: const Text('kembali'),
              onPressed: (){
                Navigator.pop(context);
              }
            )
          ],
        )
      ),
    );
  }
}