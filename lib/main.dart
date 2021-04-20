import 'package:crypto_tracker/CClist.dart';
import 'package:flutter/material.dart';

void main() => runApp(CCTracker());

class CCTracker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CryptoTracker',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: CCList(),
    );
  }
}
