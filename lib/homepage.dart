import 'package:flutter/material.dart';
import 'package:movepage_app/page2.dart';
import 'package:movepage_app/page3.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
          const Text('HomePage',style: TextStyle(
            fontSize: 30
          ),),
          const SizedBox(height: 60),
          btnPage2(context),
          btnPage3(context),
        ],
      ),
    ),
  );
  Widget btnPage2(BuildContext ctx) => TextButton(
    onPressed: () => Navigator.push(
      ctx,
      MaterialPageRoute(builder: (ctx) =>  Page2(id:696,)
      )
    ).then((value) {
      var val = value ?? [0,'zero'];
      var v1 = val[0];
      var v2 = val[1];
      myAlert(ctx, 'ข้อมูลที่ส่งกลับ\n$v1,$v2');
    },), 
    child: const Text('Go To Page 2 >>') 
    );

    Widget btnPage3(BuildContext ctx) => TextButton(
    onPressed: () => Navigator.push(
      ctx,
      MaterialPageRoute(builder: (ctx) =>  Page3(
        num: 1000000,
        text: 'เป็นล้านเลยหรอพี่!!!',
        boolean: false,)
        )
      ).then((value) =>myAlert(ctx,'ข้อมูลที่ส่งกลับ คือ: $value'),), 
    child: const Text('Go To Page 3 >>') 
    );


    void myAlert(BuildContext ctx,String msg){
      showDialog(
        context: ctx, 
        builder: (ctx) => AlertDialog(
          actions: [
            TextButton(
              onPressed: () => Navigator.of(ctx).pop(), 
              child:const Text('OK'))
          ],
          content: Text(msg),
        )
        );
    }
}