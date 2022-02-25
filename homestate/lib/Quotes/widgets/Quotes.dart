import 'package:flutter/material.dart';
import '/Quotes/widgets/quoteCard.dart';
import '../models/quoteClass.dart';

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself; everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(
        text: 'I have nothing to declare expect my genius',
        author: 'Oscar Wilde'),
    Quote(
        text: 'The truth ie rarely pure and never simple',
        author: 'Oscar Wilde'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Quotes"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        // elevation: 0,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
