library models;

class Ticket {
  final String id;
  final String status;
  final DateTime createdAt;
  Ticket({required this.id, required this.status, required this.createdAt});
}

class DeviceModel {
  final String code;
  final String name;
  DeviceModel(this.code, this.name);
}
