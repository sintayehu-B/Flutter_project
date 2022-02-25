import 'package:flutter/material.dart';
import '../models/quoteClass.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[900],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            IconButton(
              onPressed: () {
                delete();
              },
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
