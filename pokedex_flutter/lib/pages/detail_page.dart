import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_flutter/constant/constant.dart';
import 'package:pokedex_flutter/constant/ui_helper.dart';
import 'package:pokedex_flutter/models/pokemon_model.dart';
import 'package:pokedex_flutter/widgets/pokemon_detail_header.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: IconButton(
                  iconSize: 24,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back)),
            ),
            PokemonHeader(pokemon: pokemon)
          ],
        ),
      ),
    );
  }
}
