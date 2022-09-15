import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study_todolist_getx/app/routes/app_pages.dart';

import '../theme/app_theme.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.defaultTheme,
      getPages: AppPages.pages,
      initialRoute: AppPages.initial,
      // initialBinding: AppBindings(),
    );
  }
}
