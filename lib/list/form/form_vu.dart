import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getpractice/list/form/form_controller.dart';
import 'package:getpractice/list/list_controller.dart';

class FormScreen extends StatelessWidget {
  final FormController formController = FormController();
  final ListController listController = Get.find();
  FormScreen(this.i, { Key? key }) : super(key: key);
  int i;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form'),),
      body:  Form(
          key: formController.formKey,
          child: Column(
          children: [
            TextFormField(
              initialValue: i ==999999999999999 ? '' :listController.person[i].id.toString(),
              onSaved: formController.onSaveId,
            ),
            TextFormField(
              initialValue: i ==999999999999999 ? '' :listController.person[i].name.toString(),
              onSaved: formController.onSaveName,
            ),
            ElevatedButton(onPressed: (){
              formController.onSaveButton();
              i == 999999999999999?
              listController.person.add(formController.person!): listController.onUpdate(i, formController.person!);
              Get.back();
            }, child: const Text('Update'))
          ],
        )),
      
    );
  }
}