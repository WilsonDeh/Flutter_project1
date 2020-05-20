import 'dart:math';

import 'package:flutter/material.dart';

List <BoxShadow>customShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: -5,
    offset: Offset(-5, -5),
    blurRadius: 30),

  BoxShadow(
    color: Colors.blue[900].withOpacity(.2),
    spreadRadius: 2,
    offset: Offset(7, 7),
    blurRadius: 20,
  )
];

List <BoxShadow>customShadow2 = [
                        BoxShadow(
                          color: Colors.blueGrey[600],
                          offset: Offset(4.0, 4.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0
                        ),
                        BoxShadow(
                          color: Colors.blueGrey[600],
                          offset: Offset(-6.0, -6.0),
                          blurRadius: 15.0,
                          spreadRadius: 1.0
                        ),
                        ];