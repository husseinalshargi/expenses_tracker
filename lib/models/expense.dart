import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid(); //to be able to use this instance anywhere
final formatter = DateFormat.yMd(); //to format date to (after the dot)

//define a group of named constant values.
enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining_rounded,
  Category.travel: Icons.flight_takeoff_rounded,
  Category.leisure: Icons.movie_creation_rounded,
  Category.work: Icons.work_rounded
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); //to initilize id outside the const args

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  String get FormattedDate{
    return formatter.format(date);
  }
}
