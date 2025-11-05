import 'package:shared/services/firebase_bootstrap.dart';
import 'firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'router.dart';
Future<void> main() async=>runApp(const FreshAdminWeb());
class FreshAdminWeb extends StatelessWidget{ const FreshAdminWeb({super.key});
  @override Widget build(BuildContext context)=>MaterialApp.router(title:'Fresh Admin', theme: buildFreshTheme(), routerConfig: buildRouter()); }
