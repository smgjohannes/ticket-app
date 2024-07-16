// lib/presentation/viewmodels/ticket.dart
class Ticket {
  final String date;
  final String offense;
  final String licenseNumber;
  final String plateNumber;
  final bool isPaid;

  Ticket({
    required this.date,
    required this.offense,
    required this.licenseNumber,
    required this.plateNumber,
    required this.isPaid,
  });

  get status => null;
}
