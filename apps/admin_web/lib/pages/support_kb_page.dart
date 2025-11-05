import 'package:flutter/material.dart';
class SupportKbPage extends StatelessWidget { const SupportKbPage({super.key});
  @override Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: const Text('Support & Knowledge Base')), body: ListView(children: const [
      ListTile(title: Text('Refrigerator – Not Cooling'), subtitle: Text('Steps, images, videos')),
      ListTile(title: Text('Washer – Noise during spin'), subtitle: Text('Troubleshoot article')),
    ]));
  }
}
