import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_flutter/constant/constant.dart';
import 'package:pokedex_flutter/models/pokemon_model.dart';

class PokemonHeader extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonHeader({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? 'NA',
                  style: Constants.pokemonNameTextStyle(),
                ),
              ),
              Text(
                "#${pokemon.num}",
                style: Constants.pokemonNameTextStyle(),
              )
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
            label: Text(pokemon.type?.join(', ') ?? ''),
          ),
        ],
      ),
    );
  }
}
