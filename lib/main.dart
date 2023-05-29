import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
  List <Quote> quotes=[
    Quote(text:"Success is not final, failure is not fatal, it's the courage to continue that counts.",author:'Jon'),
    Quote(text:"The only way to do great work is to love what you do.",author:'Cen'),
    Quote(text:"Believe you can and you're halfway there.",author:'Na'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quote'),
        backgroundColor: Colors.orange[600],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(), 
      ),
    );
  }
}

