import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_todolist_getx/app/modules/todo_list/todo_list_controller.dart';

import '../../../../models/task_model.dart';
import '../../../../theme/app_colors.dart';
import '../../../../theme/app_typographies.dart';

class ListItemWidget extends StatefulWidget {
  ListItemWidget({
    Key? key,
    required this.task,
  }) : super(key: key);

  final Task task;
  final controller = Get.find<TodoListController>();

  @override
  State<ListItemWidget> createState() => _ListItemWidgetState();
}

class _ListItemWidgetState extends State<ListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 0,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: AppColors.white70,
        borderRadius: BorderRadius.circular(16),
      ),
      child: CheckboxListTile(
        checkboxShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        value: widget.task.isChecked,
        onChanged: (value) => widget.controller.onCheckChanged(
          task: widget.task,
          value: value,
        ),
        secondary: const CircleAvatar(
          child: Icon(
            Icons.task,
          ),
        ),
        title: Text(
          widget.task.name,
          style: AppTypographies.listItemTitleTextStyle,
        ),
      ),
    );
  }
}
