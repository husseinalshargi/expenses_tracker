import 'package:expence_traker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    //builder only creates items when it is needed
    return ListView.builder(//ctx and index is automatically provided, it will be called "itemCount" num of times
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Text(expenses[index].title),
    ); 
  }
}
