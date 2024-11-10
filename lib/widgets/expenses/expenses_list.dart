import 'package:expense_tracker/core/utils/app_theme.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses/expense_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => Dismissible(
              background: Container(
                margin: EdgeInsets.symmetric(
                    horizontal: Theme.of(context).cardTheme.margin!.horizontal),
                decoration: BoxDecoration(
                  color: cColorScheme.error,
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              key: ValueKey(expenses[index]),
              onDismissed: (direction) {
                onRemoveExpense(expenses[index]);
              },
              child: ExpenseItem(
                expenses: expenses[index],
              ),
            ),
        itemCount: expenses.length);
  }
}
