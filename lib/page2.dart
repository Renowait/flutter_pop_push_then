import 'package:flutter/material.dart';
import 'package:movepage_app/homepage.dart';
import 'package:movepage_app/page3.dart';

// ignore: must_be_immutable
class Page2 extends StatelessWidget {
  int id;
  
   Page2({super.key, required this.id});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Navigation'),
      centerTitle: true,
      backgroundColor: Colors.orangeAccent,
      foregroundColor: const Color.fromARGB(255, 255, 255, 255),
    ),
    body:  Center(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text('P A G E 2\nPage id : $id',style: const TextStyle(
            fontSize: 30
          ),),
          const SizedBox(height: 60),
          btnPage3(context),
          btnBack(context),
        ],
      ),
    ),
  );

  Widget btnPage3(BuildContext ctx) => TextButton(
    onPressed: () => Navigator.push(
      ctx,
      MaterialPageRoute(builder: (ctx) => Page3(
        num: 200,
        text: 'พอจะมีสัก200มั้ย',
        boolean: false,)
        )
      ).then((value) => myAlert(ctx,'ข้อมูลที่ส่งกลับไปคือ: $value')), 
    child: const Text('Go To Page 3 >>') 
    );

    Widget btnBack(BuildContext ctx) => TextButton(
    onPressed: () => Navigator.pop(
      ctx,[456,'สี่-ห้า-หก']
      
    ), 
    child: const Text('Go To Back >>') 
    );

    void myAlert(BuildContext ctx ,String msg){
      showDialog(
        context: ctx, 
        builder: (ctx) => AlertDialog(
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(), 
              child:const Text('OK'))
          ],
          content: Text(msg),
        ));
    }
}