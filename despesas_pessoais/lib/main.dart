
import 'package:flutter/material.dart';
import './components/transaction_list.dart';
import './components/transaction_form.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

void botaooff() {}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 124, 33, 243),
        title: const Text(
          'Despesas Pessoais',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            width: double.infinity,
            child: Card(
              color: Color(0xFFdac9df),
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),
          TransactionsList(transactions: _transactions),
          TransactionForm(),
        ],
      ),
    );
  }
}
