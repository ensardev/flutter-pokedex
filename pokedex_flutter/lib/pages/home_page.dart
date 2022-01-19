import 'package:flutter/material.dart';
import 'package:pokedex_flutter/models/pokemon_model.dart';
import 'package:pokedex_flutter/services/pokedex_api.dart';
import 'package:pokedex_flutter/widgets/apptitle.dart';
import 'package:pokedex_flutter/widgets/pokemon_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppTitle(),
          Expanded(child: PokemonList()),
        ],
      ),
    );
  }
}
