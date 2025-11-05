import 'package:flutter/material.dart';
class ProductsDevicesPage extends StatelessWidget { const ProductsDevicesPage({super.key});
  @override Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: const Text('Products & Devices')), body: ListView(children: const [
      ListTile(title: Text('Digital Refrigerator 370L'), subtitle: Text('Code: FR-REF-DIG-370L')),
      ListTile(title: Text('Upright Freezer 320L'), subtitle: Text('Code: FR-FZR-UPR-320L')),
    ]));
  }
}
