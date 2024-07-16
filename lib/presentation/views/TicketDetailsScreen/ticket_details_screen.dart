import 'package:flutter/material.dart';

class TicketDetailsScreen extends StatelessWidget {
  final String date;
  final String offense;
  final String licenseNumber;
  final String plateNumber;
  final bool isPaid;

  const TicketDetailsScreen({
    Key? key,
    required this.date,
    required this.offense,
    required this.licenseNumber,
    required this.plateNumber,
    required this.isPaid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blue,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 13,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          ),
        ),
        title: const Text(
          'Traffic Tickets',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // Handle notifications
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Status: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          isPaid ? 'Resolved' : 'Pending',
                          style: TextStyle(
                            color: isPaid ? Colors.green : Colors.red,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Contravened Charge',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Offense: ',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(offense,
                            style: const TextStyle(color: Colors.black)),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Place: ',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text('Some Place',
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Date & Time: ',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(date, style: const TextStyle(color: Colors.black)),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amount: ',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text('1000 NAD', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ticket Number: ',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text('TN123456', style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Vehicle Involved',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Toyota Yaris (2009), Hatchback',
                      style: TextStyle(color: Colors.black),
                    ),
                    const Text(
                      'N 76545 RU',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            if (!isPaid) // Only show this button if the ticket is not paid
              ElevatedButton(
                onPressed: () {
                  // Handle upload proof of payment
                },
                child: const Text('Upload Proof of Payment'),
              ),
          ],
        ),
      ),
    );
  }
}
