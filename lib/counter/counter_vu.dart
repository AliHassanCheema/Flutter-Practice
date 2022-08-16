import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getpractice/counter/counter_controller.dart';

class CounterScreen extends StatelessWidget {
  final CounterController controller = CounterController();
  CounterScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[900],
        title: const Text('Counter Getx'),),
        body:  Center(
          child: Obx(()=> Text('${controller.counter}', style: TextStyle(color: Colors.cyan[900], fontSize: 32),)),
        ),
        floatingActionButton: FloatingActionButton(child: const Icon(Icons.add), onPressed: (){
          controller.onIncrement();
        },),
    );
  }
}