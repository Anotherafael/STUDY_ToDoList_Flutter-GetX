import 'package:get/get.dart';
import 'package:study_todolist_getx/app/modules/todo_list/todo_list_controller.dart';

class TodoListBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<TodoListController>(TodoListController());
  }
}
