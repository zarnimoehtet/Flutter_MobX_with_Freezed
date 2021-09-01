import 'package:flutter_application_1/app/modules/about/about_routes.dart';
import 'package:flutter_application_1/app/modules/about/about_widget.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AboutModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes =>
      [ChildRoute(AboutRoutes.root, child: (_, __) => AboutWidget())];
}
