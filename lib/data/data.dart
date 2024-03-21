import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionsData = [
  {
    "icon" : const FaIcon(FontAwesomeIcons.burger, color: Colors.white,),
    "color" : Colors.yellow.shade600,
    "name" : "Food",
    "totalAmount" : "-\$ 45",
    "date" : "Today",
  },
  {
    "icon" : const FaIcon(FontAwesomeIcons.bagShopping, color: Colors.white,),
    "color" : Colors.purple,
    "name" : "Shopping",
    "totalAmount" : "-\$ 200",
    "date" : "Today",
  },
  {
    "icon" : const FaIcon(FontAwesomeIcons.heartCircleCheck, color: Colors.white,),
    "color" : Colors.green,
    "name" : "Health",
    "totalAmount" : "-\$ 95",
    "date" : "Yesterday",
  },
  {
    "icon" : const FaIcon(FontAwesomeIcons.plane, color: Colors.white,),
    "color" : Colors.blue,
    "name" : "Travel",
    "totalAmount" : "-\$ 135",
    "date" : "Yesterday",
  }
];