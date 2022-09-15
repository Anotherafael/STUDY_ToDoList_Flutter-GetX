import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_todolist_getx/app/modules/todo_list/todo_list_controller.dart';
import 'package:study_todolist_getx/app/modules/todo_list/widgets/list/list_item_widget.dart';

class ListWidget extends StatelessWidget {
  final TodoListController controller;

  const ListWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Obx(
          (() => ListView.builder(
                itemBuilder: (_, index) {
                  final task = controller.taskList[index];
                  return ListItemWidget(
                    task: task,
                  );
                },
                itemCount: controller.taskList.length,
              )),
        ),
      ),
    );
  }
}
