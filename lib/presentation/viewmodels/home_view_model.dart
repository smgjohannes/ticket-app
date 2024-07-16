// lib/presentation/viewmodels/home_view_model.dart
import 'package:basics/presentation/viewmodels/ticket.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  List<Ticket> _tickets = [
    Ticket(
      date: '23 April 2024',
      offense: 'Speeding',
      licenseNumber: 'CN76545',
      plateNumber: 'N 76545 RU',
      isPaid: false,
    ),
    Ticket(
      date: '24 April 2024',
      offense: 'Illegal Parking',
      licenseNumber: 'CN76546',
      plateNumber: 'N 76546 RU',
      isPaid: false,
    ),
    Ticket(
      date: '25 April 2024',
      offense: 'Red Light Violation',
      licenseNumber: 'CN76547',
      plateNumber: 'N 76547 RU',
      isPaid: false,
    ),
    Ticket(
      date: '26 April 2024',
      offense: 'No Seatbelt',
      licenseNumber: 'CN76548',
      plateNumber: 'N 76548 RU',
      isPaid: true,
    ),
    Ticket(
      date: '27 April 2024',
      offense: 'DUI',
      licenseNumber: 'CN76549',
      plateNumber: 'N 76549 RU',
      isPaid: true,
    ),
  ];

  List<Ticket> get allTickets => _tickets;

  List<Ticket> get outstandingTickets =>
      _tickets.where((ticket) => !ticket.isPaid).toList();

  List<Ticket> get paidTickets =>
      _tickets.where((ticket) => ticket.isPaid).toList();
}
