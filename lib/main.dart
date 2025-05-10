import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_sql/routes/pages.dart';
import 'package:getx_sql/routes/routes.dart';

import 'services/SQL/database_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 SqlDBHelper();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      getPages: Pages.pages,
      initialRoute: Routes.ANA_SAYFA,
    );
  }
}
