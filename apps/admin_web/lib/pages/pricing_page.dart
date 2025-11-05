import 'package:flutter/material.dart';
import 'package:shared/services/pricing_config.dart';

class PricingPage extends StatefulWidget { const PricingPage({super.key}); @override State<PricingPage> createState()=>_PricingPageState(); }
class _PricingPageState extends State<PricingPage>{
  final cfg = PricingConfig();
  @override Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: const Text('Pricing Config')), body:
      ListView(children: cfg.categoryLabor.entries.map((e){
        final cat = e.key; final levels = e.value;
        return Card(margin: const EdgeInsets.all(12), child: Padding(padding: const EdgeInsets.all(12), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children:[
          Text(cat, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          for (int i=0;i<levels.length;i++) Row(children:[
            SizedBox(width: 120, child: Text('Level ${i+1}')),
            Expanded(child: TextFormField(initialValue: levels[i].toStringAsFixed(2), decoration: const InputDecoration(border: OutlineInputBorder()), onChanged: (v){ final d = double.tryParse(v) ?? levels[i]; setState(()=>cfg.categoryLabor[cat]![i] = d); })),
          ]),
          const SizedBox(height: 8),
          Align(alignment: Alignment.centerRight, child: ElevatedButton(onPressed: (){}, child: const Text('Save'))),
        ])));
      }).toList()));
  }
}
