import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_alternativa_bloc/src/provider/heroesinfo.dart';
import 'package:provider_alternativa_bloc/src/widgets/super_floatingaction.dart';
import 'package:provider_alternativa_bloc/src/widgets/super_text.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(heroesInfo.heroe),
        centerTitle: true,
      ),
      body: Center(child: SuperText()),
      floatingActionButton: SuperFloatingAction(),
    );
  }
}