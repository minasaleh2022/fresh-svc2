import 'package:flutter/material.dart';

class RbacMatrixPage extends StatelessWidget { const RbacMatrixPage({super.key});
  @override Widget build(BuildContext context){
    final roles = ['Admin','Super Supervisor','Supervisor','Data Entry','Store Keeper','Store Manager','Store Supervisor','Center Owner'];
    final perms = ['Tickets','Technicians','Inventory','Reports','Billing','Settings'];
    return Scaffold(appBar: AppBar(title: const Text('Roles & Permissions (RBAC)')), body: Padding(padding: const EdgeInsets.all(16), child:
      SingleChildScrollView(scrollDirection: Axis.horizontal, child:
        DataTable(columns: [const DataColumn(label: Text('Role')), ...perms.map((p)=>DataColumn(label: Text(p))).toList()], rows: roles.map((r)=>DataRow(cells: [
          DataCell(Text(r)), ...perms.map((p)=>DataCell(Checkbox(value: true, onChanged: (_){}))).toList()
        ])).toList())
      )));
  }
}
