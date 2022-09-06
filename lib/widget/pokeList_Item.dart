import 'package:flutter/material.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/u%C4%B1helper.dart';
import 'package:pokedex/main.dart';
import 'package:pokedex/model/pokemon_model.dart';
import 'package:pokedex/pages/detail_page.dart';
import 'package:pokedex/widget/poke_img_ball.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon1;
  const PokeListItem({Key? key, required this.pokemon1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: ((context) => DetailPage(pokemon1: pokemon1))));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIhelper.getColorFromType(pokemon1.type![0]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pokemon1.name ?? 'N/A',
              style: Sabitler.getPokemonNameTextStyle(),
            ),
            Chip(label: Text(pokemon1.type![0])),
            Expanded(child: PokeImageAndBall(pokemon: pokemon1))
          ],
        ),
      ),
    );
  }
}
