import 'package:disenios/widgets/card_table.dart';
import 'package:disenios/widgets/custom_bottom_navigation.dart';
import 'package:disenios/widgets/page_title.dart';
import 'package:flutter/material.dart';

import 'package:disenios/widgets/background.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Background(),
          _HomeBody(),

          
        ],
      ),
      bottomNavigationBar: CustomBottom(),
    );
  }
}

class _HomeBody extends StatelessWidget {

  const _HomeBody();
 

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          PageTitle(),
          CardTable()
        ],
      ),
    );
  }
}