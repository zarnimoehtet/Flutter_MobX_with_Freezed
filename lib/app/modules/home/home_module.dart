import 'package:flutter_application_1/app/modules/home/home_routes.dart';
import 'package:flutter_application_1/app/modules/home/home_widget.dart';
import 'package:flutter_application_1/app/modules/home/store/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute(HomeRoutes.root, child: (_, __) => HomeWidget())];
}
