import 'package:basics/presentation/viewmodels/home_view_model.dart';

import 'package:basics/presentation/widgets/homebody_widgets/all_tickets_tab.dart';
import 'package:basics/presentation/widgets/homebody_widgets/outstanding_tickets_tab.dart';
import 'package:basics/presentation/widgets/homebody_widgets/paid_tickets_tab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeViewModel>(
      builder: (context, model, child) {
        return Column(
          children: [
            const SizedBox(height: 5),
            Expanded(
              child: TabBarView(
                children: [
                  AllTicketsTab(tickets: model.allTickets),
                  OutstandingTicketsTab(tickets: model.outstandingTickets),
                  PaidTicketsTab(tickets: model.paidTickets),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
