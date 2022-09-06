import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pokedex/constants/u%C4%B1helper.dart';
import 'package:pokedex/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImageAndBall({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String pokeBallImageUrl = 'images/pokeball.png';
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeBallImageUrl,
            errorBuilder: (context, error, stackTrace) => Icon(Icons.ac_unit),
            width: UIhelper.calculatePokeImgAndBallSize(),
            height: UIhelper.calculatePokeImgAndBallSize(),
            fit: BoxFit.cover,),
            
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(imageUrl: pokemon.img ?? '',
          width: UIhelper.calculatePokeImgAndBallSize(),
          height: UIhelper.calculatePokeImgAndBallSize(),
          fit: BoxFit.cover,
          placeholder: (context, url) => CircularProgressIndicator(),),
        )
      ],
    );
  }
}
