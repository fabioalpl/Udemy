import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final void Function(String, double) onSubmit;

  //TransactionForm(param0, {required this.onSubmit});
  TransactionForm({required this.onSubmit});

  @override
  State<TransactionForm> createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  //const TransactionForm({super.key});
  final titleController = TextEditingController();

  final valueController = TextEditingController();

  _submitForm() {
    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.0;
    if (title.isEmpty || value <= 0) return;
    widget.onSubmit(title, value);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            //onChanged: (newValue) => title = newValue,
            controller: titleController,
            onSubmitted: (value) => _submitForm(),
            decoration: InputDecoration(
              labelText: 'Título',
            ),
          ),
          TextField(
            //onChanged: (newValue) => value = newValue,
            controller: valueController,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            onSubmitted: (value) => _submitForm(),
            decoration: InputDecoration(
              labelText: 'Valor (R\$)',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                ),
                onPressed: () {
                  //print(titleController.text);
                  //print(valueController.text);

                  _submitForm();
                },
                child: Text("Nova Transação"),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
