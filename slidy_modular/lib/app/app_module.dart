import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_modular/app/app_controller.dart';
import 'package:slidy_modular/app/app_widget.dart';
import 'package:slidy_modular/app/pages/home/home_controller.dart';
import 'package:slidy_modular/app/pages/home/home_page.dart';
import 'package:slidy_modular/app/pages/noparametro/no_parameter_page.dart';
import 'package:slidy_modular/app/pages/other/other_page.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds =>
      [
        Bind((i) => AppController()),
        Bind((i) => HomeController())
      ];

  @override
  Widget get bootstrap => AppWidget();

  @override
  List<Router> get routers => [
    Router('/', child: (_, args) => HomePage()),
    Router('/other/:text', child: (_, args) => OtherPage(args.params['text'])),
    Router('/noparameter', child: (_, args) => NoParameterPage()),
  ];
}
