import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../model.dart';

class FormController extends GetxController{
  final formKey=  GlobalKey<FormState>();
  String id = ''; 
  String name = '';
  Person? person;

  onSaveId(value){
    id = value;
  }

  onSaveName(value){
    name = value;
  }

  onSaveButton(){
    formKey.currentState!.save();
    int personId = int.parse(id);
    person = Person(personId, name);
    debugPrint('$id .................... $name');
  }
}