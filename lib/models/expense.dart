import 'package:uuid/uuid.dart';

const uuid = Uuid(); //to be able to use this instance anywhere

//define a group of named constant values.
enum Category { food, travel, leisure, work }



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
}
