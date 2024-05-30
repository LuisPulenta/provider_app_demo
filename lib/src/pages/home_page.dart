import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_app_demo/src/providers/providers.dart';
import 'package:provider_app_demo/src/widgets/super_floatingaction.dart';
import 'package:provider_app_demo/src/widgets/super_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final heroesinfo = Provider.of<HeroesInfo>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(heroesinfo.heroe),
        centerTitle: true,
      ),
      body: const Center(child: SuperText()),
      floatingActionButton: const SuperFloatingAction(),
    );
  }
}
