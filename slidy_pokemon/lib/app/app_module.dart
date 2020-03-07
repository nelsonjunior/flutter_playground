import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_pokemon/app/app_controller.dart';
import 'package:slidy_pokemon/app/app_widget.dart';
import 'package:slidy_pokemon/app/modulos/home/home_module.dart';
import 'package:slidy_pokemon/app/shared/utils/constantes.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => Dio(BaseOptions(baseUrl: URL_BASE))),
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
        Router('/home', module: HomeModule()),
      ];
}
