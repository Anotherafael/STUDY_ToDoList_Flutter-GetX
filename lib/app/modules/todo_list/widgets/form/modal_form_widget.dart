import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../theme/app_typographies.dart';
import '../../todo_list_controller.dart';

class ModalFormWidget extends StatefulWidget {
  const ModalFormWidget({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey<FormState> formKey;

  @override
  State<ModalFormWidget> createState() => _ModalFormWidgetState();
}

class _ModalFormWidgetState extends State<ModalFormWidget> {
  final _titleController = TextEditingController();

  final taskController = Get.find<TodoListController>();

  void _clearInputs() {
    _titleController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: "Title",
                labelStyle: AppTypographies.formInputTextStyle,
                hintText: "Title of the task",
                hintStyle: AppTypographies.formInputTextStyle,
              ),
              style: AppTypographies.formInputTextStyle,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: TextButton(
                  child: Text(
                    'Add Task',
                    style: AppTypographies.formButtonTextStyle,
                  ),
                  onPressed: () {
                    taskController.onSubmit(
                      titleTask: _titleController.text,
                    );
                    _clearInputs();
                    Get.back();
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
