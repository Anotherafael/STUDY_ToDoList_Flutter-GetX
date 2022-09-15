import 'package:flutter/material.dart';

import '../../todo_list_controller.dart';

class ModalFormInputWidget extends StatelessWidget {
  const ModalFormInputWidget({
    Key? key,
    required this.inputController,
    required this.controller,
  }) : super(key: key);

  final TextEditingController inputController;
  final TodoListController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 0,
        ),
        prefixIcon: const Icon(Icons.add_task),
        hintText: 'Name',
        alignLabelWithHint: true,
        hintStyle: const TextStyle(
          color: Colors.black45,
          fontSize: 24,
        ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        fillColor: Colors.white,
      ),
    );
  }
}
