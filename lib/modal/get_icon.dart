import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GetIcon {
  static IconData getRespIcon(String name) {
    IconData iconData = Icons.ac_unit;
    switch (name) {
      case "Rent":
        iconData = FontAwesomeIcons.house;
        break;
      case "Bills / Utility":
        iconData = FontAwesomeIcons.moneyBill;
        break;
      case "Groceries":
        iconData = FontAwesomeIcons.bagShopping;
        break;
      case "Transport":
        iconData = FontAwesomeIcons.car;
        break;
      case "Domestic Help":
        iconData = Icons.person_outline_sharp;
        break;
      case "Other Needs":
        iconData = FontAwesomeIcons.o;
        break;
      case "Shopping":
        iconData = Icons.shopping_cart;
        break;
      case "Gym / Salon":
        iconData = Icons.accessibility_sharp;
        break;
      case "Entertainment":
        iconData = Icons.tv;
        break;
      case "Subscription":
        iconData = Icons.tv;
        break;
      case "Other Wants":
        iconData = Icons.now_wallpaper_sharp;
        break;
      case "Savings":
        iconData = Icons.savings;
        break;
    }

    return iconData;
  }
}