import 'package:expese_tracker_app/widgets/credit_card_container_widget.dart';
import 'package:expese_tracker_app/widgets/list_view_duty.dart';
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
                              shape: BoxShape.circle,
                              color: Colors.yellow.shade700),
                        ),
                        Icon(CupertinoIcons.person_fill,
                            color: Colors.yellow.shade800)
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
                              color:
                                  Theme.of(context).colorScheme.onBackground),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings))
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const CreditCardContainer(),

            const SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                GestureDetector(
                  onTap: () {
                    
                  },
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.outline),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const ListViewDuty(),
          ],
        ),
      ),
    );
  }
}
