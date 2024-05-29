import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [
        Image(image: AssetImage('assets/landscape.png')),
        Tittle(),
        CenterCard(),
        TextCard(),
      ]),
    );
  }
}

class Tittle extends StatelessWidget {
  const Tittle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Esto es un texto', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              Text('Aqui esta json', style: TextStyle(color: Colors.black45)),
            ]
          ),

          Expanded(child:  Container()),

          const Icon(Icons.star, color: Colors.red),
          const Text('45')
        ],
      ),
    );
  }
}


class CenterCard extends StatelessWidget {
  
  const CenterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: const Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Icon(Icons.call, color: Colors.blue, size: 30, ),
              SizedBox(height: 10),
              Text('CALL', style: TextStyle(color: Colors.blue),),
            ]
          ),
      
          Column(
            children: [
              Icon(Icons.directions, color: Colors.blue, size: 30),
              SizedBox(height: 10),
              Text('ROUTE', style: TextStyle(color: Colors.blue)),
            ]
          ),
      
          Column(
            children: [
              Icon(Icons.share, color: Colors.blue, size: 30,),
              SizedBox(height: 10),
              Text('SHARE', style: TextStyle(color: Colors.blue)),
            ]
          )
        ],
      ),
    );
  }
}

class TextCard extends StatelessWidget {
  const TextCard({super.key});

 

  @override
  Widget build(BuildContext context) {

    const textContainer = 'Lorem Ipsum es simplemente el texto de relleno de las imprentas y archivos de texto. Lorem Ipsum ha sido el texto de relleno estándar de las industrias desde el año 1500, cuando un impresor (N. del T. persona que se dedica a la imprenta) desconocido usó una galería de textos y los mezcló de tal manera que logró hacer un libro de textos especimen. No sólo sobrevivió 500 años, sino que tambien ingresó como texto de relleno en documentos electrónicos, quedando esencialmente igual al original. Fue popularizado en los 60s con la creación de las hojas "Letraset", las cuales contenian pasajes de Lorem Ipsum, y más recientemente con software de autoedición, como por ejemplo Aldus PageMaker, el cual incluye versiones de Lorem Ipsum.';
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: const Text(textContainer, textAlign: TextAlign.justify),
    );
  }
}