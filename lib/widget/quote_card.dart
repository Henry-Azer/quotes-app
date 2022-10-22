import 'package:flutter/material.dart';

import '../dto/QuoteDto.dart';

class QuoteCard extends StatelessWidget {
  final QuoteDto quote;
  final Function delete;

  const QuoteCard(this.quote, this.delete, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: const TextStyle(fontSize: 18.0),
            ),
            const SizedBox(height: 5.0),
            Text(
              quote.author,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0),
            TextButton.icon(
              onPressed: () => delete(),
              label: const Text('delete quote'),
              icon: const Icon(Icons.delete),

              // quote.author,
              // style: const TextStyle(
              //   fontSize: 16.0,
              //   color: Colors.grey,
              //   fontWeight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }
}
