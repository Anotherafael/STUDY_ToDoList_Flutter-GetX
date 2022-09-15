import 'package:get/get.dart';
import '../modules/splash/splash_view.dart';
import '../modules/todo_list/todo_list_binding.dart';
import '../modules/todo_list/todo_list_view.dart';
import 'app_routes.dart';

class AppPages {
  static const initial = Routes.initial;
  static const todolist = Routes.todoList;
  static const todoform = Routes.todoForm;

  static List<GetPage> get pages => [
        GetPage(
          name: Routes.initial,
          page: () => const SplashView(),
        ),
        GetPage(
          name: Routes.todoList,
          page: () => TodoListView(),
          binding: TodoListBinding(),
        ),
      ];
}
