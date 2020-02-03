import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't100',
      title: 'PSU 500 W',
      amount: 2500,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't101',
      title: 'Nokia 105',
      amount: 1000,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't102',
      title: 'Sparx footwear',
      amount: 850,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = Transaction(title: title, amount: amount, id: DateTime.now().toString(), date: DateTime.now());
    setState(() {
     _userTransaction.add(newTx); 
    });

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
