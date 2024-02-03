import 'package:flutter/material.dart';
import 'package:despesas_pessoais/models/transaction.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';

class TransactionUser extends StatefulWidget {
  const TransactionUser({super.key});

  @override
  State<TransactionUser> createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't3',
      title: 'Conta de agua',
      value: 78.25,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionsList(transactions: transactions),
        TransactionForm(),
      ],
    );
  }
}