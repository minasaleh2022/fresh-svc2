import 'package:flutter/material.dart';
import 'package:shared/services/assignment_service.dart';

class TicketsPage extends StatefulWidget { const TicketsPage({super.key}); @override State<TicketsPage> createState()=>_TicketsPageState(); }
class _TicketsPageState extends State<TicketsPage>{
  final svc = AssignmentService();
  String region = 'Cairo';
  final skills = <String>{'Refrigeration'};
  bool forced = false;

  @override Widget build(BuildContext context){
    final matches = svc.match(region, skills.toList(), forced: forced);
    return Scaffold(appBar: AppBar(title: const Text('Tickets Management')), body:
      Padding(padding: const EdgeInsets.all(12), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children:[
        Row(children:[
          SizedBox(width:220, child: TextField(decoration: const InputDecoration(labelText: 'Filter by Ticket ID', border: OutlineInputBorder()))),
          const SizedBox(width:8),
          DropdownButton<String>(value: region, items: const ['Cairo','Giza','Alex'].map((e)=>DropdownMenuItem(value:e, child: Text(e))).toList(), onChanged: (v){ if(v!=null) setState(()=>region=v); }),
          const SizedBox(width:8),
          FilterChip(label: const Text('Refrigeration'), selected: skills.contains('Refrigeration'), onSelected: (b){ setState(()=> b ? skills.add('Refrigeration') : skills.remove('Refrigeration')); }),
          const SizedBox(width:8),
          FilterChip(label: const Text('Washer'), selected: skills.contains('Washer'), onSelected: (b){ setState(()=> b ? skills.add('Washer') : skills.remove('Washer')); }),
          const SizedBox(width:8),
          FilterChip(label: const Text('Freezer'), selected: skills.contains('Freezer'), onSelected: (b){ setState(()=> b ? skills.add('Freezer') : skills.remove('Freezer')); }),
          const SizedBox(width:8),
          Switch(value: forced, onChanged: (v)=>setState(()=>forced=v)),
          const Text('Forced Assign'),
        ]),
        const SizedBox(height:12),
        const Divider(),
        const Text('Matching Technicians'),
        const SizedBox(height:8),
        Expanded(child: ListView.builder(itemCount: matches.length, itemBuilder: (_, i){
          final t = matches[i];
          return ListTile(title: Text(t.name), subtitle: Text('Region: ${t.region} • Skills: ${t.skills.join(', ')}'),
            trailing: ElevatedButton(onPressed: (){}, child: const Text('Assign to Ticket')));
        })),
      ])));
  }
}
