import 'package:flutter/material.dart';

void main() {
  runApp(const TradingApp());
}

class TradingApp extends StatelessWidget {
  const TradingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AI Trading Signal Dashboard',
      theme: ThemeData.dark(),
      home: const DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AI Trading Signals'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Colors.green.shade900,
              child: const ListTile(
                leading: Icon(Icons.trending_up, color: Colors.greenAccent, size: 36),
                title: Text('BTC/USDT - BUY SIGNAL', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Entry: \$62,400 | Target: \$65,000 | Stop Loss: \$61,000'),
              ),
            ),
            const SizedBox(height: 12),
            Card(
              color: Colors.red.shade900,
              child: const ListTile(
                leading: Icon(Icons.trending_down, color: Colors.redAccent, size: 36),
                title: Text('ETH/USDT - SELL SIGNAL', style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Entry: \$3,450 | Target: \$3,200 | Stop Loss: \$3,550'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
