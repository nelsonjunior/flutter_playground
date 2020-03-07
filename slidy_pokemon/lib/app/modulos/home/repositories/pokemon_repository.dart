import 'package:dio/dio.dart';
import 'package:slidy_pokemon/app/modulos/home/models/pokemon_model.dart';

class PokemonRepository {
  final Dio dio;

  PokemonRepository(this.dio);

  Future<List<PokemonModel>> getAllPokemons() async {
    var response = await dio.get('/pokemon');
    List<PokemonModel> list = [];
    for (var jsoPon in (response.data['results'] as List)) {
      PokemonModel model = PokemonModel(name: jsoPon['name']);
      list.add(model);
    }
    return list;
  }
}
