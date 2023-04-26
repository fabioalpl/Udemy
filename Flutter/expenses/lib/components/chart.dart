import 'package:flutter/material.dart';
import '../models/transaction.dart';

class Chart extends StatelessWidget {
  //const Chart({super.key});

  Chart(this.recentTransaction);

  final List<Transaction> recentTransaction;

  List<Map<String, Object>> get groupedTransactions {
    return List.generate(7, (index) => {
      return {'day': 'T', 'value': 9.99};
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: [],
      ),
    );
  }
}
