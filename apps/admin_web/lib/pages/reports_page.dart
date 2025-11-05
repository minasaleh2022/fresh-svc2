import 'package:flutter/material.dart';
class ReportsPage extends StatelessWidget { const ReportsPage({super.key});
  @override Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: const Text('Reports & Analytics')), body: ListView(children: const [
      ListTile(title: Text('MTTR by Region (Monthly)')),
      ListTile(title: Text('FFR Trend')),
      ListTile(title: Text('Customer Satisfaction (CSAT/NPS)')),
    ]));
  }
}
