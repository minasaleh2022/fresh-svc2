import 'package:flutter/material.dart';

class OverviewPage extends StatelessWidget { const OverviewPage({super.key});
  @override Widget build(BuildContext context){
    return Scaffold(appBar: AppBar(title: const Text('Admin Dashboard – Overview')),
      body: Padding(padding: const EdgeInsets.all(16), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children:[
        Wrap(spacing:12, runSpacing:12, children:[_Card('Open Tickets','128'), _Card('In Progress','35'), _Card('Overdue','8'), _Card('On-Time Arrival','92%')]),
        const SizedBox(height:16),
        Expanded(child: Row(children:[
          Expanded(child: _Panel(title:'Tickets Management (sample table)', child: _TicketsTable())),
          const SizedBox(width:12),
          Expanded(child: _Panel(title:'Inventory & Parts (sample)', child: _InventoryList())),
        ])),
      ]));
  }
}
class _Card extends StatelessWidget{ final String title; final String value; const _Card(this.title,this.value); @override Widget build(BuildContext c)=>Container(width:220, padding: const EdgeInsets.all(14), decoration: BoxDecoration(color: Color(0xFFF8F8F8), borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.black12)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children:[Text(title), const SizedBox(height:6), Text(value, style: const TextStyle(fontSize:22, fontWeight: FontWeight.bold))])); }
class _Panel extends StatelessWidget{ final String title; final Widget child; const _Panel({required this.title, required this.child}); @override Widget build(BuildContext c)=>Container(padding: const EdgeInsets.all(12), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.black12)), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children:[Text(title, style: const TextStyle(fontWeight: FontWeight.bold)), const Divider(), Expanded(child: child)])); }
class _TicketsTable extends StatelessWidget{ const _TicketsTable(); @override Widget build(BuildContext c)=>ListView(children:[
  _row('#123459','John Smith','Digital Refrigerator','Open'),
  _row('#123460','Sarah Brown','Washer','In Progress'),
  _row('#123461','Michael Wilson','Upright Freezer','Overdue'),
]); }
Widget _row(String id,String customer,String device,String status)=>ListTile(title: Text(id), subtitle: Text('$customer • $device'), trailing: Text(status));
class _InventoryList extends StatelessWidget{ const _InventoryList(); @override Widget build(BuildContext c)=>ListView(children:[
  ListTile(title: const Text('Compressor'), trailing: const Text('Low Stock (35)')),
  ListTile(title: const Text('Thermostat'), trailing: const Text('82')),
]); }
