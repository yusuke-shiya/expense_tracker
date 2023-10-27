import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  String _enteredTitle = '';
  void _saveChangedTitle(String value) {
    _enteredTitle = value;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: _saveChangedTitle,
            decoration: const InputDecoration(labelText: '品目名'),
            maxLength: 20,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print('_enteredTitle');
                  print(_enteredTitle);
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
