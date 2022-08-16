import 'package:get/get.dart';
import 'package:getpractice/list/model.dart';

class ListController extends GetxController{
  RxInt id = 5.obs;
  RxList<Person> person = <Person>[
    Person(0, 'Ali Hassan'),
    Person(1, 'Salman'),
    Person(2, 'Hamza'),
    Person(3, 'Akram'),
    Person(4, 'Omair'),
  ].obs; 

  onAddListItem(){
    person.add(Person(id.value++, 'Ali$id'));
  }
  onDeleteItem(int i){
    person.removeAt(i);
  }

  onUpdate(int index, Person value){
    person[index] = value;
  }
}