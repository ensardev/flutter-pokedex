import 'package:flutter/material.dart';
import 'package:pokedex_flutter/constant/constant.dart';
import 'package:pokedex_flutter/constant/ui_helper.dart';
import 'package:pokedex_flutter/models/pokemon_model.dart';
import 'package:pokedex_flutter/widgets/pokemon_img.dart';

class PokemonListItem extends StatelessWidget {
  final PokemonModel pokemon;
  PokemonListItem({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: UIHelper.getColorFromType(pokemon.type![0]),
      child: Column(
        children: [
          Text(
            pokemon.name ?? "NA",
            style: Constants.pokemonNameTextStyle(),
          ),
          Chip(
            label: Text(pokemon.type![0]),
          ),
          Expanded(child: PokemonImage(pokemon: pokemon)),
        ],
      ),
    );
  }
}
