import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_flutter/constant/ui_helper.dart';
import 'package:pokedex_flutter/models/pokemon_model.dart';

class PokemonImage extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonImage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String logoImage = 'images/pokeball.png';

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset(
            logoImage,
            width: UIHelper.calculatePokemonImageSize(),
            height: UIHelper.calculatePokemonImageSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: CachedNetworkImage(
            imageUrl: pokemon.img ?? '',
            width: UIHelper.calculatePokemonImageSize(),
            height: UIHelper.calculatePokemonImageSize(),
            fit: BoxFit.fitHeight,
            placeholder: (context, url) => const CircularProgressIndicator(
              color: Colors.deepOrange,
            ),
          ),
        ),
      ],
    );
  }
}
