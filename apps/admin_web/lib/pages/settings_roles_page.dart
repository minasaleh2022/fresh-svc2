import 'package:flutter/material.dart';
class SettingsRolesPage extends StatelessWidget { const SettingsRolesPage({super.key});
  @override Widget build(BuildContext context){
    final roles = const ['Admin','Super Supervisor','Supervisor','Data Entry','Store Keeper','Store Manager','Store Supervisor','Center Owner'];
    return Scaffold(appBar: AppBar(title: const Text('Settings & Roles')), body: ListView(children: [
      const ListTile(title: Text('RBAC Matrix (sample)')),
      ...roles.map((r)=>CheckboxListTile(value: true, onChanged: (_){}, title: Text(r))).toList(),
    ]));
  }
}
