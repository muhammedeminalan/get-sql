import 'package:get/get.dart';
import 'package:getx_sql/routes/routes.dart';
import 'package:getx_sql/view/view_home.dart';
import 'package:getx_sql/controller/home_model.dart';


abstract class Pages {
  static List<GetPage> pages = [
    GetPage(
      name: Routes.ANA_SAYFA,
      page: () => ViewHome(),
      bindings: [
        BindingsBuilder.put(() => HomeController()),
      ],
    ),
   
  ];
}