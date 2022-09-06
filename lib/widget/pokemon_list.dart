import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/widget/pokeList_Item.dart';

import '../model/pokemon_model.dart';
import '../services/poke_api.dart';

class PokemonList extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  PokemonList({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _PokemonListState createState() => _PokemonListState();
}

class _PokemonListState extends State<PokemonList> {
  late Future<List<PokemonModel>> _pokemonListFuture;

  @override
  void initState() {
    super.initState();
    _pokemonListFuture = PokeApi.getPokemonData();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('pokemon List build çalişti');
    return FutureBuilder<List<PokemonModel>>(
      future: _pokemonListFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PokemonModel>? listem = snapshot.data;
          return GridView.builder(
            itemCount: listem?.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    ScreenUtil().orientation == Orientation.portrait ? 2 : 3),
            itemBuilder: (context, index) {
                debugPrint('item builder çalişti');
                return PokeListItem(pokemon1: listem![index]);
              });
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Hataaaaaa'),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
