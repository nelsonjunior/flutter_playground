import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy_pokemon/app/modulos/home/home_controller.dart';
import 'package:slidy_pokemon/app/modulos/home/home_page.dart';
import 'package:slidy_pokemon/app/modulos/home/repositories/pokemon_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<PokemonRepository>())),
        Bind((i) => PokemonRepository(i.get<Dio>()))
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];
}
