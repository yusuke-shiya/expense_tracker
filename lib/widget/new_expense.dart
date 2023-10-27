import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(labelText: '品目名'),
            maxLength: 20,
          ),
          TextField(
            controller: _amountController,
            decoration: const InputDecoration(labelText: '金額'),
            keyboardType: TextInputType.number,
            maxLength: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  print('キャンセル');
                },
                child: const Text('キャンセル'),
              ),
              ElevatedButton(
                onPressed: () {
                  print('_enteredTitle');
                  print(_titleController.text);
                  print(_amountController.text);
                },
                child: const Text('登録'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
