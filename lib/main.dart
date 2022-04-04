import 'package:flutter/material.dart';
import 'package:provider_app_demo/src/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:provider_app_demo/src/providers/heroesinfo.dart';
import 'package:provider_app_demo/src/providers/villanosinfo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // @override
  // Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (_) => new HeroesInfo(),
  //     child: MaterialApp(
  //       debugShowCheckedModeBanner: false,
  //       title: 'Material App',
  //       initialRoute: 'home',
  //       routes: {
  //         'home': (context) => HomeScreen(),
  //       },
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new HeroesInfo()),
        ChangeNotifierProvider(create: (_) => new VillanosInfo()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (context) => HomeScreen(),
        },
      ),
    );
  }
}
