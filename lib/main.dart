import 'package:flutter/material.dart';
import 'quote.dart';

void main(){
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
  Quote(text:"Success is not final, failure is not fatal, it's the courage to continue that counts.",author:'Jon'),
  Quote(text:"The only way to do great work is to love what you do.",author:'Cen'),
  Quote(text:"Believe you can and you're halfway there.",author:'Na'),
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children : <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800],
              ),
            ),
        ],),
      )
    );
  }
  List<String> authors = [
  'Jon',
  'Cen',
  'Na'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Awesome Quote'),),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}

//quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(), 