import 'package:flutter/material.dart';

class Expense {
  IconData mainIcon;
  String date;
  IconData expenseTypeIcon;
  String merchantType;
  String expenseName;
  int myShare;

  Expense({required this.mainIcon, required this.date, required this.expenseTypeIcon, required this.expenseName, required this.merchantType, required this.myShare});
}