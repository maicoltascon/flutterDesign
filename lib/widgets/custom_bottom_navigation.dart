import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: 0,
     items: const [
      BottomNavigationBarItem(
          icon: Icon(Icons.calendar_today_outlined), label: 'Calendario'),
      BottomNavigationBarItem(
          icon: Icon(Icons.person_outline), label: 'Perfil'),
      BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined), label: 'Configuraciones'),
    ]);
  }
}
