import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app_demo/src/providers/providers.dart';

class SuperText extends StatelessWidget {
  const SuperText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      // Consumer<HeroesInfo>(
      //   builder: (context, heroesInfo, _) => Text(
      //     heroesInfo.heroe,
      //     style: TextStyle(fontSize: 30, color: heroesInfo.colorBase),
      //   ),
      // ),
      Text(
        heroesInfo.heroe,
        style: TextStyle(fontSize: 30, color: heroesInfo.colorBase),
      ),
      Text(
        villanosInfo.villano,
        style: const TextStyle(
          fontSize: 25,
        ),
      ),
    ]);
  }
}
