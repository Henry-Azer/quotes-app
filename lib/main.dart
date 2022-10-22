import 'package:flutter/material.dart';
import 'package:quotes_app/widget/quote_card.dart';

import 'dto/QuoteDto.dart';

void main() => runApp(const MaterialApp(
      home: Quotes(),
    ));

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<QuoteDto> quotesList = [
    QuoteDto(text: 'The greatest glory in living lies', author: 'someone'),
    QuoteDto(
        text: 'The way to get started is to quit talking', author: 'someone'),
    QuoteDto(text: 'If life were predictable it would cease', author: 'someone')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
            children: quotesList
                .map((quote) => QuoteCard(
                    quote, () => setState(() => quotesList.remove(quote))))
                .toList()),
      ),
    );
  }
}
