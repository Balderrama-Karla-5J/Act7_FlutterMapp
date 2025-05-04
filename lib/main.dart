import 'package:flutter/material.dart';
import 'package:balderrama1149/pantalla_uno.dart';
import 'package:balderrama1149/pantalla_dos.dart';
import 'package:balderrama1149/pantalla_tres.dart';
import 'package:balderrama1149/pantalla_cuatro.dart';
import 'package:balderrama1149/pantalla_cinco.dart';
import 'package:balderrama1149/pantalla_seis.dart';
import 'package:balderrama1149/pantalla_siete.dart';

void main() => runApp(MiMapp());

class MiMapp extends StatelessWidget {
  const MiMapp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Mapp ',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => PantallaDos(),
        '/pantalla3': (context) => PantallaTres(),
        '/pantalla4': (context) => PantallaCuatro(),
        '/pantalla5': (context) => PantallaCinco(),
        '/pantalla6': (context) => PantallaSeis(),
        '/pantalla7': (context) => PantallaSiete(),
      },
    );
  }
}
