import 'package:flutter/material.dart';
import 'quote.dart';

void main(){
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  @override

  List<Quote> quotes = [
  Quote(text:"Success is not final, failure is not fatal, it's the courage to continue that counts.",author:'Jon'),
  Quote(text:"The only way to do great work is to love what you do.",author:'Cen'),
  Quote(text:"Believe you can and you're halfway there.",author:'Na'),
  ];

  List<String> authors = [
  'Jon',
  'Cen',
  'Na'
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Awesome Quote'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList()
      ),
    );
  }
}

//quotes.map((quote) => Text('${quote.text} - ${quote.author}')).toList(), 