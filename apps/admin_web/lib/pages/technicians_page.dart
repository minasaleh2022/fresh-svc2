import 'package:flutter/material.dart';

class TechniciansPage extends StatelessWidget { const TechniciansPage({super.key});
  @override Widget build(BuildContext context){
    final rows = const [
      ('T-1001','Ahmed Hassan','Cairo','4.8'),
      ('T-1002','Omar Tarek','Giza','4.6'),
    ];
    return Scaffold(appBar: AppBar(title: const Text('Technicians')), body: ListView.separated(
      itemCount: rows.length, separatorBuilder: (_, __)=> const Divider(height:1), itemBuilder: (_, i){
        final r = rows[i]; return ListTile(title: Text(r[1]), subtitle: Text('Code: ${r[0]} • ${r[2]}'), trailing: Text('⭐ ${r[3]}'));
      }));
  }
}
