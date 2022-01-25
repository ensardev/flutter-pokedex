import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_flutter/constant/constant.dart';
import 'package:pokedex_flutter/constant/ui_helper.dart';
import 'package:pokedex_flutter/models/pokemon_model.dart';
import 'package:pokedex_flutter/widgets/pokemon_detail_body.dart';
import 'package:pokedex_flutter/widgets/pokemon_detail_header.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String logoImage = 'images/pokeball.png';
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
            PokemonHeader(pokemon: pokemon),
            SizedBox(
              height: 40.h,
            ),
            Expanded(
                child: Stack(
              children: [
                // Positioned(
                //   child: Image.asset(
                //     logoImage,
                //     height: 0.10.sh,
                //   ),
                //   right: 0,
                //   top: 0,
                // ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  top: 0.10.sh,
                  child: PokemonInformation(pokemon: pokemon),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: CachedNetworkImage(
                    imageUrl: pokemon.img ?? '',
                    height: 0.25.sh,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
