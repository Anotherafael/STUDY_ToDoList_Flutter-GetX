import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_todolist_getx/app/modules/todo_list/todo_list_controller.dart';
import 'package:study_todolist_getx/app/modules/todo_list/widgets/form/modal_form_widget.dart';
import 'package:study_todolist_getx/app/modules/todo_list/widgets/shared/circular_icon_button_widget.dart';

import '../../theme/app_colors.dart';
import '../../theme/app_theme.dart';
import 'widgets/list/list_widget.dart';

class TodoListView extends StatelessWidget {
  TodoListView({Key? key}) : super(key: key);

  final _title = 'My Todo List';
  final _controller = Get.find<TodoListController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: AppTheme.backgroundDecoration,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_title),
          automaticallyImplyLeading: false,
        ),
        body: GetBuilder<TodoListController>(
          builder: ((_) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListWidget(
                    controller: _controller,
                  ),
                  CircularIconButtonWidget(
                    iconSize: 32,
                    icon: Icons.add_task,
                    backgroundColor: Colors.cyan,
                    splashColor: Colors.black,
                    color: AppColors.white,
                    function: () => _bottomSheetModalWidget(context),
                  ),
                ],
              )),
        ),
      ),
    );
  }

  void _bottomSheetModalWidget(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (_) {
        return SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: ModalFormWidget(
              formKey: GlobalKey<FormState>(),
            ),
          ),
        );
      },
    );
  }
}
