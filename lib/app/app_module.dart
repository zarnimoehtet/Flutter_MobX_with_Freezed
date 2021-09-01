import 'package:flutter_application_1/app/app_routes.dart';
import 'package:flutter_application_1/app/modules/about/about_module.dart';
import 'package:flutter_application_1/app/modules/home/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/store/home_store.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeStore()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(AppRoutes.root, module: HomeModule()),
        ModuleRoute(AppRoutes.about, module: AboutModule())
      ];
}
