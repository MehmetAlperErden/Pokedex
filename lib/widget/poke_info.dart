import 'package:flutter/material.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/u%C4%B1helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon1;

  const PokeInformation({Key? key, required this.pokemon1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.w),
          ),
          color: Colors.white),
      child: Padding(
        padding: UIhelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformationRow('Name', pokemon1.name),
            _buildInformationRow('Height', pokemon1.height),
            _buildInformationRow('Weight', pokemon1.weight),
            _buildInformationRow('Spawn Time', pokemon1.spawnTime),
            _buildInformationRow('Spawn Time', pokemon1.spawnTime),
            _buildInformationRow('Weakness', pokemon1.weaknesses),
            _buildInformationRow('Pre Evolution', pokemon1.prevEvolution),
            _buildInformationRow('Next Evolution', pokemon1.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInformationRow(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(' , '),
            
          )
        else if (value == null)
          Text(
            'Not available',
          )
        else
          Text(
            value,
            
          ),
      ],
    );
  }
}