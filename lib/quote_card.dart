import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete;
  const QuoteCard({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(fontSize: 18, color: Colors.grey[600],),
          ),
          const SizedBox(height: 6.0),
          Text(
            quote.author,
            style: TextStyle(fontSize: 14, color: Colors.grey[900]),
          ),
          const SizedBox(height: 10.0),
          TextButton.icon(
            onPressed: delete,
            label: const Text('delete'),
            icon: const Icon(Icons.delete),
          )
        ]),
      ),
    );
  }
}