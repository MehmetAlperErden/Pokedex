import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex/constants/constants.dart';
import 'package:pokedex/constants/u%C4%B1helper.dart';

// ignore: camel_case_types
class apptitle extends StatefulWidget {
  const apptitle({Key? key}) : super(key: key);

  @override
  State<apptitle> createState() => _apptitleState();
}

String pokeballImageUrl = 'images/pokeball.png';

// ignore: camel_case_types
class _apptitleState extends State<apptitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: UIhelper.getDefaultPadding(),
      child: Container(
        color: Colors.red,
        alignment: Alignment.centerLeft,
        height: UIhelper.getAppTitleWidgetHeight(),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'PokeDex',
                  style: Sabitler.getTitleTextStyle(),
                )),
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                pokeballImageUrl,
                width: ScreenUtil().orientation == Orientation.portrait
                    ? 0.2.sh
                    : 0.2.sw,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}
