import 'package:flutter/material.dart';

class GetIcon {
  static IconData getRespIcon(String name) {
    IconData iconData = Icons.ac_unit;
    switch (name) {
      case "Rent":
        iconData = Icons.house;
        break;
      case "Bills / Utility":
        iconData = Icons.receipt_long;
        break;
      case "Groceries":
        iconData = Icons.shopping_cart;
        break;
      case "Transport":
        iconData = Icons.directions_car;
        break;
      case "Domestic Help":
        iconData = Icons.cleaning_services;
        break;
      case "Other Needs":
        iconData = Icons.money;
        break;
      case "Shopping":
        iconData = Icons.shopping_cart;
        break;
      case "Gym / Salon":
        iconData = Icons.spa;
        break;
      case "Entertainment":
        iconData = Icons.delivery_dining;
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