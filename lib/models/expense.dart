import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

final dateFormatter = DateFormat.yMd();

enum Category { food, travel, leisure, work, other }

const categoryIcons = {
  Category.food: Icons.fastfood_rounded,
  Category.travel: Icons.flight_rounded,
  Category.leisure: Icons.sports_esports_rounded,
  Category.work: Icons.work_rounded,
  Category.other: Icons.category_rounded,
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  String get formattedDate => dateFormatter.format(date);
}
