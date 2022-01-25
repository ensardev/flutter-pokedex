import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_flutter/models/pokemon_model.dart';

class PokemonInformation extends StatelessWidget {
  final PokemonModel pokemon;
  const PokemonInformation({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.w)),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformationRow('Name', pokemon.name),
            _buildInformationRow('Height', pokemon.height),
            _buildInformationRow('Weight', pokemon.weight),
            _buildInformationRow('Spawn Time', pokemon.spawnTime),
            _buildInformationRow('Weakness', pokemon.weaknesses),
            _buildInformationRow('Pre Evolution', pokemon.prevEvolution),
            _buildInformationRow('Next Evolution', pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        if (value is List && value.isNotEmpty)
          Text(value.join(', '))
        else if (value == null)
          const Text('NA')
        else
          Text(value),
      ],
    );
  }
}
