import 'dart:math';

import 'package:expese_tracker_app/pages/home/views/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomNavigationBar(
            showUnselectedLabels: false,
            showSelectedLabels: false,
            backgroundColor: Colors.white,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: "home"),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.graph_square_fill), label: "stats")
            ]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: const CircleBorder(),
        child: Container(

            //  floatingactionbutton boyutu 60'a 60 olduğu için
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.tertiary,
                  Theme.of(context).colorScheme.secondary,
                  Theme.of(context).colorScheme.primary,
                ], transform: const GradientRotation(pi / 4))),
            child: const Icon(CupertinoIcons.add)),
      ),
      body: const MainScreen(),
    );
  }
}
