import 'package:expenses/components/adaptativeDatePicker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'adaptativeButton.dart';
import 'adaptativeTextField.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double, DateTime) onSubmit;

  //TransactionForm(param0, {required this.onSubmit});
  TransactionForm({required this.onSubmit});

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  //const TransactionForm({super.key});
  final _titleController = TextEditingController();
  final _valueController = TextEditingController();
  late DateTime _selectedDate = DateTime.now();

  _submitForm() {
    final title = _titleController.text;
    final value = double.tryParse(_valueController.text) ?? 0.0;
    if (title.isEmpty || value <= 0) return;
    widget.onSubmit(title, value, _selectedDate);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.only(
            top: 10,
            right: 10,
            left: 10,
            bottom: 10 + MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(children: [
            AdaptativeTextField(
              //onChanged: (newValue) => value = newValue,
              controller: _titleController,
              onSubmitted: _submitForm(),
              label: 'Título',
            ),
            AdaptativeTextField(
              //onChanged: (newValue) => value = newValue,
              controller: _valueController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: _submitForm(),
              label: 'Valor (R\$)',
            ),
            AdaptativeDatePicker(
                selectedDate: _selectedDate,
                onDateChanged: (newDate) {
                  setState(() {
                    _selectedDate = newDate;
                  });
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                AdaptativeButton(
                  label: 'Nova Transação',
                  onPressed: _submitForm,
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
