import 'package:basics/presentation/viewmodels/ticket.dart';
import 'package:basics/presentation/views/TicketDetailsScreen/ticket_details_screen.dart';
import 'package:basics/presentation/widgets/homebody_widgets/ticket_card.dart';
import 'package:flutter/material.dart';

class OutstandingTicketsTab extends StatelessWidget {
  final List<Ticket> tickets;

  const OutstandingTicketsTab({super.key, required this.tickets});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tickets.length,
      itemBuilder: (context, index) {
        final ticket = tickets[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TicketDetailsScreen(
                  date: ticket.date,
                  offense: ticket.offense,
                  licenseNumber: ticket.licenseNumber,
                  plateNumber: ticket.plateNumber,
                  isPaid: false, // Marking the ticket as outstanding
                ),
              ),
            );
          },
          child: TicketCard(ticket: ticket),
        );
      },
    );
  }
}
