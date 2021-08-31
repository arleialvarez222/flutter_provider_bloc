import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_alternativa_bloc/src/pages/home_page.dart';
import 'package:provider_alternativa_bloc/src/provider/heroesinfo.dart';
import 'package:provider_alternativa_bloc/src/provider/villanos_info.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HeroesInfo()),
        ChangeNotifierProvider(create: (context) => VillanosInfo()),
      ],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
      ),
    );
  }
 /*  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      //builder: (context) => HeroesInfo(),
      create: (context) => HeroesInfo(),
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        routes: {
          'home': (context) => HomePage(),
        },
      ),
    );
  } */
}