import 'package:flutter/material.dart';
import 'package:pokedex/pages/app_title.dart';
import 'package:pokedex/widget/pokemon_list.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => 
         Column(
          children: [
            const apptitle(),
            Expanded(child: PokemonList())
          ],
        ),
      ),
    );
  }
}
