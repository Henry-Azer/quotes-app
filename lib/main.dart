import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Quotes(),
    ));

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
