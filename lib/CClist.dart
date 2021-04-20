import 'package:crypto_tracker/CCData.dart';
import 'package:flutter/material.dart';

class CCList extends StatelessWidget {
  List<CCData> data = [
    CCData(name: 'Bitcoin', symbol: 'BTC', rank: 1, price: 6000),
    CCData(name: 'Etherium', symbol: 'ETH', rank: 2, price: 200)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CryptoTracker'),
      ),
      body: Container(
        child: ListView(
          children: _buildList(),
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    return data
        .map((CCData f) => ListTile(
              title: Text(f.symbol),
              subtitle: Text(f.name),
              leading: CircleAvatar(
                child: Text(f.rank.toString()),
              ),
              trailing: Text('\$${f.price}'),
            ))
        .toList();
  }
}
