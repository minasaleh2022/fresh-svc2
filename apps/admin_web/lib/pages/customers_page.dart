import 'package:flutter/material.dart';
class CustomersPage extends StatelessWidget { const CustomersPage({super.key});
  @override Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: const Text('Customers')), body: ListView(children: const [
      ListTile(title: Text('Ahmed Ali'), subtitle: Text('+20 010...')),
      ListTile(title: Text('Mona Youssef'), subtitle: Text('+20 011...')),
    ]));
  }
}
