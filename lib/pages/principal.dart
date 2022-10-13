import 'package:flutter/material.dart';
import 'package:tarea_ev3_fabioparedes/colors/colores.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'contenedores.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color2,
      body: Contenedores(),
    );
  }
}
