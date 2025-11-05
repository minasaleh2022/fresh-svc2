import 'package:flutter/material.dart';
class AiDiagnosticsPage extends StatelessWidget { const AiDiagnosticsPage({super.key});
  @override Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: const Text('AI Diagnostics')), body: ListView(children: const [
      ListTile(title: Text('Top Faults (Last 30 days)'), subtitle: Text('Cooling issue • Door seal • Sensor failure')),
      ListTile(title: Text('Model Accuracy'), trailing: Text('Top-3: 74%')),
    ]));
  }
}
