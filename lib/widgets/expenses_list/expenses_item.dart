

import 'package:expence_traker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text(expense.title),
            const SizedBox(height: 4),
            Row(
              children: [
                Text("\$${expense.amount.toStringAsFixed(2)}"), //12.23434 -> 12.23
                const Spacer(), //takes the space between both
                Row(children: [
                  const Icon(Icons.dangerous),
                  const SizedBox(width: 6,),
                  Text(expense.date.toString())
                ],),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
