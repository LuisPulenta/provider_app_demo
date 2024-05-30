import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app_demo/src/providers/providers.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesinfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.access_time),
          backgroundColor: Colors.red,
          onPressed: () {
            heroesinfo.heroe = 'Ironman';
            villanosInfo.villano = 'El Mandarín';
          },
        ),
        const SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          child: const Icon(Icons.account_balance),
          backgroundColor: Colors.blue,
          onPressed: () {
            heroesinfo.heroe = 'Capitán América';
            villanosInfo.villano = 'Red Skull';
          },
        ),
      ],
    );
  }
}
