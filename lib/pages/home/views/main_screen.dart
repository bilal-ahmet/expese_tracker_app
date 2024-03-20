import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(                
                  // mainAxisSize = MainAxisSize.max dersek row sona kadar gidiyor ama sağ tarafa bir nesne eklersek en sağda görünmüyor
                  // o yüzden büyük row ve sağa ekleyeceğimiz nesneyi row alabiliriz
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.yellow.shade700),
                        ),
                        Icon(CupertinoIcons.person_fill, color: Colors.yellow.shade800)
                      ],
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "welcome",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.outline),
                        ),
                        Text(
                          "johnny lesh",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.onBackground),
                        ),
                      ],
                    ),
                    
                  ],
                ),
                const Row(
                  children: [
                    Icon(CupertinoIcons.settings)
                  ],
                )
              ],
            ),

            
          ],
        ),
      ),
    );
  }
}
