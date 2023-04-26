import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  //const TransactionList({super.key});

  final List<Transaction> _transactions;

  TransactionList(this._transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      //child: ListView(
      // Usando builder, não serão todos os elementos renderizados,
      // só os que aparecem na tela.
      child: _transactions.isEmpty
          ? Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Nenhuma Transação Cadastrada!",
                  style: Theme.of(context).textTheme.headline6,
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: Image.asset(
                    "assets/images/waiting.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )
          : ListView.builder(
              itemCount: _transactions.length,
              itemBuilder: (context, index) {
                final tr = _transactions[index];
                return Card(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                          color: Theme.of(context).colorScheme.primary,
                          width: 2,
                        )),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          //'R\$ ' + tr.value.toString(),
                          'R\$ ${tr.value.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tr.title,
                            style: Theme.of(context).textTheme.headline6,
                            /*style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),*/
                          ),
                          Text(
                              //tr.date.toString(),
                              DateFormat('d MMM y').format(tr.date),
                              style: TextStyle(
                                color: Colors.grey,
                              )),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
    );
  }
}
