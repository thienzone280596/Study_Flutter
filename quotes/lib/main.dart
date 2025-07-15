import 'package:flutter/material.dart';
import 'package:quotes/quote_card';

import 'quote.dart';

void main() => runApp(MaterialApp(title: 'Quote List', home: QuoteList()));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
      author: "Oscar Wilde", // 👈 bạn viết nhầm thành "Osca Wide"
      text: "Quotes are the most powerful thing in the world.",
    ),
    Quote(
      author: "Albert Einstein",
      text:
          "Life is like riding a bicycle. To keep your balance, you must keep moving.",
    ),
    Quote(
      author: "Mahatma Gandhi",
      text: "Be the change that you wish to see in the world.",
    ),
    Quote(
      author: "Nelson Mandela",
      text: "It always seems impossible until it is done.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: const Text('Awesome Quotes'),
      ),
      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
