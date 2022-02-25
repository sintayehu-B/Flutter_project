import 'package:flutter/material.dart';
import './new_transaction.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  UserTransaction({Key? key}) : super(key: key);

  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: "1",
      title: 'T shirt',
      amount: 350.0,
      date: DateTime.now(),
    ),
    Transaction(
      id: "1",
      title: 'Nike shoe',
      amount: 2300.0,
      date: DateTime.now(),
    )
  ];
  void _addNewTransaction(String txTitle, double txAmount) {
    final newTxt = Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransactions.add(newTxt);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}
