import 'dart:math';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Page3 extends StatelessWidget {
  int num;
  String text;
  bool boolean;
  var rnd = Random();
  Page3({super.key,required this.num, required this.text, required this.boolean});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Text('P A G E 3 \nNum: $num\nText: $text\nBoolean: $boolean',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 60),
            btnBack(context),
          ],
        ),
      ),
    );
  }
    Widget btnBack(BuildContext ctx) => TextButton(
    onPressed: () => Navigator.pop(ctx,rnd.nextInt(100)), 
    child: const Text('<<< Go Back ') 
    );
}
