import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_alternativa_bloc/src/provider/heroesinfo.dart';
import 'package:provider_alternativa_bloc/src/provider/villanos_info.dart';

class SuperFloatingAction extends StatelessWidget {
  const SuperFloatingAction({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final heroesInfo = Provider.of<HeroesInfo>(context);
    final villanosInfo = Provider.of<VillanosInfo>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          child: Icon(Icons.access_time),
          backgroundColor: Colors.red,
          onPressed: () {
            heroesInfo.heroe = 'Ironman';
            villanosInfo.villano = 'El pulpo poll';
          } 
        ),
        SizedBox(height: 10),
        FloatingActionButton(
          child: Icon(Icons.account_balance),
          backgroundColor: Colors.blue,
          onPressed: () {
            heroesInfo.heroe = 'Capitan America';
            villanosInfo.villano = 'Red Skaul';
          } 
        ),
      ],
    );
  }
}