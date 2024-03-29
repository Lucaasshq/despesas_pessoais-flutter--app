import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({super.key, required this.transactions});

  final List<Transaction> transactions;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: transactions.isEmpty ? Column(
        children: [
          const SizedBox(height: 20,),
          Text(
            'Nenhuma Transação cadastrada!',
            style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
          const SizedBox(height: 20,),
          SizedBox(
            height: 200,
            child: Image.asset("lib/components/assets/Imagens/waiting.png",
            fit: BoxFit.cover,),
          )
        ],
      ) : ListView.builder(
          itemCount: transactions.length,
          itemBuilder: (ctx, index) {
            final tr = transactions[index];
            return Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).primaryColor,
                        width: 2,
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'R\$ ${tr.value.toStringAsFixed(2)}',
                      style: TextStyle(
                          /* fontFamily: 'OpenSans' */
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.primary),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        tr.title,
                        /* style: Theme.of(context).textTheme.titleLarge, */
                        
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        DateFormat('d MMM y').format(tr.date),
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
