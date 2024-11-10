import 'package:expense_tracker/core/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expenses});
  final Expense expenses;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
        child: Column(
          children: [
            Text(
              expenses.title,
              style: ts14Black600,
            ),
             SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${expenses.amount.toStringAsFixed(2)}',
                  style: ts12Black500,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(categoryIcons[expenses.category]),
                     SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      expenses.formattedDate,
                      style: ts12Black500,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
