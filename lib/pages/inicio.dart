import 'package:flutter/material.dart';
import 'package:tarea_ev3_fabioparedes/pages/principal.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Principal(),
      debugShowCheckedModeBanner: false,
    );
  }
}
