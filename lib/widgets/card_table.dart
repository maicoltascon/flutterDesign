import 'dart:ui';

import 'package:flutter/material.dart';


class CardTable extends StatelessWidget {
  const CardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return  Table(
      children: const [
        TableRow(
          children: [
            _SingleCard(color: Colors.blue, icon: Icons.border_all, text: 'General',),
            _SingleCard( color: Colors.pinkAccent, icon: Icons.car_rental, text: 'Transport',),
          ]
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.green, icon: Icons.shop, text: 'Shopping',),
            _SingleCard( color: Colors.orange, icon: Icons.cloud, text: 'Bills',),
          ]
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.yellow, icon: Icons.movie, text: 'Entertainment',),
            _SingleCard( color: Colors.purple, icon: Icons.local_grocery_store, text: 'Grocery',),
          ]
        ),

        TableRow(
          children: [
            _SingleCard(color: Colors.red, icon: Icons.book, text: 'Books',),
            _SingleCard( color: Colors.teal, icon: Icons.wifi, text: 'connection',),
          ]
        )
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({required this.icon, required this.color, required this.text});

  final boxDecoration = const  BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.all(Radius.circular(20))
      );

  @override
  Widget build(BuildContext context) {
    
    return  Container(
      margin: const EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: boxDecoration,
            child: _CardItem(icon: icon, color: color, text: text),
          ),
        ),
      ),
    );
  }
}

class _CardItem extends StatelessWidget {

  final IconData icon;
  final Color color;
  final String text;

  const _CardItem({required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: color,
          radius: 30,
          child: Icon(icon, color: Colors.white, size: 35,),
        ),
        const SizedBox(height: 10),
        Text(text, style: TextStyle(color: color, fontSize: 18),)
      ],

    );
  }
}