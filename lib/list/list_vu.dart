import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getpractice/list/form/form_vu.dart';
import 'package:getpractice/list/list_controller.dart';


class ListScreen extends StatelessWidget {
  final ListController controller = Get.put(ListController());
  ListScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PersonList'),
      ),
      body: Obx(
        ()=> ListView.builder(
          itemCount: controller.person.length,
          itemBuilder: (context, index){
          return Obx(
            ()=> InkWell(
              onTap: (){
               Get.to(FormScreen(index));
              },
              child: Container(
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('${controller.person[index].name}'),
                      const Spacer(),
                      Text('${controller.person[index].id}'),
                      IconButton(onPressed: (){
                        controller.onDeleteItem(index);
                      }, icon: const Icon(Icons.delete, color: Colors.red,))
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(child: const Icon(Icons.add),onPressed: (){
        
        Get.to(FormScreen(999999999999999));
        // controller.onAddListItem();
      },),
    );
  }
}