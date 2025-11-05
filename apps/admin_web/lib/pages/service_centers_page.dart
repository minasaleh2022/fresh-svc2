import 'package:flutter/material.dart';

class ServiceCentersPage extends StatelessWidget { const ServiceCentersPage({super.key});
  @override Widget build(BuildContext context){
    final centers = const [
      ('31638','Main Cairo Center','Cairo'),
      ('42015','Giza Authorized Center','Giza'),
    ];
    return Scaffold(appBar: AppBar(title: const Text('Authorized Service Centers')), body: ListView.separated(
      itemCount: centers.length, separatorBuilder: (_, __)=> const Divider(height:1), itemBuilder: (_, i){
        final c = centers[i];
        return ListTile(title: Text(c[1]), subtitle: Text('Code: ${c[0]} • Region: ${c[2]}'), trailing: ElevatedButton(onPressed: (){}, child: const Text('Open')));
      }));
  }
}
