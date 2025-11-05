import 'package:flutter/material.dart';
class InventoryPage extends StatelessWidget { const InventoryPage({super.key});
  @override Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: const Text('Inventory & Warehouses')), body: ListView(children: const [
      ListTile(title: Text('Temp Sensor (PRT-THS-001)'), trailing: Text('Van Stock: 4')),
      ListTile(title: Text('Compressor 370 (PRT-COMP-370)'), trailing: Text('Branch Warehouse: 12')),
    ]));
  }
}
