import 'package:mobx/mobx.dart';
import 'package:slidy_pokemon/app/modulos/home/models/pokemon_model.dart';
import 'package:slidy_pokemon/app/modulos/home/repositories/pokemon_repository.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final PokemonRepository repository;

  HomeControllerBase(this.repository) {
    fetchPokemons();
  }

  @observable
  ObservableFuture<List<PokemonModel>> pokemons;

  @action
  fetchPokemons() {
    pokemons = repository.getAllPokemons().asObservable();
  }
}
