import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pokedex_flutter/models/pokemon_model.dart';

class PokeDexApi {
  static const String _baseURL =
      "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";

  static Future<List<PokemonModel>> getPokemons() async {
    List<PokemonModel> _pokemonList = [];

    var result = await Dio().get(_baseURL);
    var pokemonList = jsonDecode(result.data)['pokemon'];

    if (pokemonList is List) {
      _pokemonList = pokemonList.map((e) => PokemonModel.fromJson(e)).toList();
    } else {
      return [];
    }

    return _pokemonList;
  }
}
