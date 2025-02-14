import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';



class Background extends StatelessWidget {
  const Background({super.key});
  
    final boxDecoration = const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [
            Color(0xff2E305F),
            Color(0xff202333),
          ],
        )
      );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(decoration: boxDecoration),
        const Positioned(
          top: -100,
          left: -30,
          child: _PinkBox()
        )
      ] 
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox ();

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(241, 142, 172, 1),
            ]
          ),
          borderRadius: BorderRadius.circular(80)
        ),
      ),
    );
  }
}