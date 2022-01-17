import 'package:flutter/material.dart';
import 'package:pokedex_flutter/models/pokemon_model.dart';
import 'package:pokedex_flutter/services/pokedex_api.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<PokemonModel>> _pokeList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pokeList = PokeDexApi.getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<PokemonModel>>(
        future: _pokeList,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<PokemonModel> _myPokemonList = snapshot.data!;
            return ListView.builder(
              itemCount: _myPokemonList.length,
              itemBuilder: (context, index) {
                var currentPokemon = _myPokemonList[index];
                return ListTile(
                  title: Text(currentPokemon.name.toString()),
                );
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
      ),
    );
  }
}
