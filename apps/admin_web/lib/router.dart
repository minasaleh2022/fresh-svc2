import 'package:go_router/go_router.dart';
import 'pages/overview_page.dart';
import 'pages/tickets_page.dart';
import 'pages/technicians_page.dart';
import 'pages/customers_page.dart';
import 'pages/products_devices_page.dart';
import 'pages/inventory_page.dart';
import 'pages/ai_diagnostics_page.dart';
import 'pages/reports_page.dart';
import 'pages/support_kb_page.dart';
import 'pages/settings_roles_page.dart';
import 'pages/rbac_matrix_page.dart';
import 'pages/service_centers_page.dart';
import 'pages/pricing_page.dart';

GoRouter buildRouter()=>GoRouter(initialLocation:'/', routes:[
  GoRoute(path:'/technicians', builder:(_,__)=>const TechniciansPage()),
  GoRoute(path:'/customers', builder:(_,__)=>const CustomersPage()),
  GoRoute(path:'/products', builder:(_,__)=>const ProductsDevicesPage()),
  GoRoute(path:'/inventory', builder:(_,__)=>const InventoryPage()),
  GoRoute(path:'/ai', builder:(_,__)=>const AiDiagnosticsPage()),
  GoRoute(path:'/reports', builder:(_,__)=>const ReportsPage()),
  GoRoute(path:'/support', builder:(_,__)=>const SupportKbPage()),
  GoRoute(path:'/settings', builder:(_,__)=>const SettingsRolesPage()),
  GoRoute(path:'/rbac', builder:(_,__)=>const RbacMatrixPage()),
  GoRoute(path:'/centers', builder:(_,__)=>const ServiceCentersPage()),
  GoRoute(path:'/pricing', builder:(_,__)=>const PricingPage()),
  GoRoute(path:'/', builder:(_,__)=>const OverviewPage()),
  GoRoute(path:'/tickets', builder:(_,__)=>const TicketsPage()),
]);
