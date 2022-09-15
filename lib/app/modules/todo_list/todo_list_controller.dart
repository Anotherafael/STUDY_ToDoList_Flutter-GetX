import 'package:get/get.dart';

import '../../models/task_model.dart';

class TodoListController extends GetxController {
  RxList<Task> taskList = <Task>[].obs;

  void onCheckChanged({required Task task, bool? value}) {
    final index = taskList.indexWhere((element) => element.id == task.id);
    taskList[index].isChecked = value!;
    update();
  }

  void onSubmit({required String titleTask}) {
    final task = Task(
      id: DateTime.now().toString(),
      name: titleTask,
      isChecked: false,
    );
    taskList.add(task);
  }
}
