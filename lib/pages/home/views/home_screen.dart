import 'dart:math';

import 'package:expese_tracker_app/pages/home/views/main_screen.dart';
import 'package:expese_tracker_app/pages/stats/stats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var widgetList = [MainScreen(), StatsScreen()];

  int index = 0;

  late Color selectedItem = Color(0xFF00B2E7);
  late Color unselectedItem = Colors.grey;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
          child: BottomNavigationBar(
              onTap: (value) {
                setState(() {
                  index = value;
                });
              },
              showUnselectedLabels: false,
              showSelectedLabels: false,
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home, color: index == 0 ? selectedItem : unselectedItem,), label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.graph_square_fill, color: index == 1 ? selectedItem : unselectedItem,),
                    label: "stats")
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
        body: index == 0 ? MainScreen() : StatsScreen());
  }
}
