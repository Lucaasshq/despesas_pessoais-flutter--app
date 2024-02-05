// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:despesas_pessoais/components/transaction_user.dart';

main() => runApp(const ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

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
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: const Icon(Icons.add),
            color: Colors.white,
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: Card(
                color: Color(0xFFdac9df),
                elevation: 5,
                child: Text('Gráfico'),
              ),
            ),
            TransactionUser()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color.fromARGB(206, 223, 201, 255),
        onPressed: () {  },
        child: const Icon(Icons.add)
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,
    );
  }
}
