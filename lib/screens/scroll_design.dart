
import 'package:flutter/material.dart';


class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({super.key});

  final boxDecoration = const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6),
            ],
          )
        );

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      body:  Container(
        decoration: boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          children: const [
            ScreenPage(),
            ScreenButton()
          ],
        ),
      )
    );
  }
}

class ScreenPage extends StatelessWidget {
  const ScreenPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [Backgorund(), MainContent()],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 70, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Text(
            '11°',
            style: textStyle,
          ),
          const Text(
            'Miércoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
        ],
      ),
    );
  }
}

class Backgorund extends StatelessWidget {
  const Backgorund({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}

class ScreenButton extends StatelessWidget {
  const ScreenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff30BAE9),
            shape: const StadiumBorder(),
            maximumSize: const Size(150, 50),
          ),
          child: const Text('Bienvenido', style: TextStyle(color: Colors.white)),
        ),
      )
    );
  }
}
