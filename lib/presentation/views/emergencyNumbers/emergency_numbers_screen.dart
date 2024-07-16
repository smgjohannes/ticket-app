import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class EmergencyNumbersScreen extends StatelessWidget {
  const EmergencyNumbersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 137,
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
          'Emergency Numbers',
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
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 1, 90, 163),
                spreadRadius: 2,
                blurRadius: 2,
                offset: Offset(0, -3), // shadow at the top
              ),
            ],
          ),
          child: ListView(
            children: const [
              EmergencyContactRow(
                icon: Icons.phone,
                station: 'City Police Emergency',
                number: '302 302 (toll free)',
              ),
              EmergencyContactRow(
                icon: Icons.phone,
                station: 'Diaz Fire Station',
                number: '290 3381',
              ),
              EmergencyContactRow(
                icon: Icons.phone,
                station: 'Electricity Failure',
                number: '222 658 (All Hours)',
              ),
              EmergencyContactRow(
                icon: Icons.phone,
                station: 'Headquarters Fire',
                number: '211 111',
              ),
              EmergencyContactRow(
                icon: Icons.phone,
                station: 'Maxuilili Fire Station',
                number: '212 265',
              ),
              EmergencyContactRow(
                icon: Icons.phone,
                station: 'Namibian Police (NAMPOL)',
                number: '10 111',
              ),
              EmergencyContactRow(
                icon: Icons.phone,
                station: 'Otjomuise Fire Station',
                number: '061 - 290 3381',
              ),
              EmergencyContactRow(
                station: 'State Hospital',
                number: '203 9111',
                icon: Icons.phone,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EmergencyContactRow extends StatelessWidget {
  final IconData icon;
  final String station;
  final String number;

  const EmergencyContactRow({
    super.key,
    required this.icon,
    required this.station,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 16.0,
      ),
      child: Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                station[0], // First letter of the station
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  station,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
                Text(
                  number,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
          ),
          const SizedBox(width: 16),
          GestureDetector(
            onTap: () => _makePhoneCall(number),
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(121, 9, 235, 197),
              radius: 20,
              child: Icon(icon, color: Colors.white, size: 24),
            ),
          ),
        ],
      ),
    );
  }

  void _makePhoneCall(String number) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: number,
    );
    await launchUrl(launchUri);
  }
}
