import 'package:flutter/material.dart';
import 'package:pokedex_flutter/constant/ui_helper.dart';
import 'package:pokedex_flutter/models/pokemon_model.dart';
import 'package:pokedex_flutter/services/pokedex_api.dart';
import 'package:pokedex_flutter/widgets/pokemonlist_item.dart';

class PokemonList extends StatefulWidget {
  PokemonList({Key? key}) : super(key: key);

  @override
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokeList;
  @override
  void initState() {
    super.initState();
    _pokeList = PokeDexApi.getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PokemonModel>>(
      future: _pokeList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel> _myPokemonList = snapshot.data!;
          return GridView.builder(
            padding: UIHelper.getDefaultPadding(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: UIHelper.getPokemonSize(),
            ),
            itemCount: _myPokemonList.length,
            itemBuilder: (BuildContext context, int index) {
              return PokemonListItem(pokemon: _myPokemonList[index]);
            },
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text("Data failed!"),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
