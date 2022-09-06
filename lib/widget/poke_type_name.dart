import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeNameType extends StatelessWidget {
  final PokemonModel pokemon1;
  const PokeNameType({Key? key, required this.pokemon1, required PokemonModel pokemon}) : super(key: key);

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
                  pokemon1.name ?? '',
                  style: Sabitler.getPokemonNameTextStyle(),
                ),
              ),
              Text(
                '#${pokemon1.num}',
                style: Sabitler.getPokemonNameTextStyle(),
              ),
            ],
          ),
          SizedBox(
            height: 0.02.sh,
          ),
          Chip(
              label: Text(
            pokemon1.type?.join(' , ') ?? '',
            style: Sabitler.getTypeChipTextStyle(),
          ))
        ],
      ),
    );
  }
}
