import 'package:basics/presentation/widgets/homebody_widgets/custom_drawer.dart';
import 'package:basics/presentation/widgets/splash_widgets/overlay_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/home_view_model.dart';
import '../emergencyNumbers/emergency_numbers_screen.dart'; // Correct import for EmergencyNumbersScreen
import 'package:basics/presentation/widgets/homebody_widgets/homebody_widget.dart'; // Correct import for HomeBody

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: Builder(
              builder: (context) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Open sidebar
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            title: const Text(
              'Traffic TicketEase',
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
            bottom: const TabBar(
              indicator: BoxDecoration(
                color: Colors.white,
              ),
              tabs: [
                Tab(
                  child: Text(
                    'All',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Outstanding',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'Paid',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          drawer: const drawer(),
          body: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/background.png',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  OverlayContainer(),
                  const Expanded(
                      child: HomeBody()), // Corrected import reference
                ],
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const EmergencyNumbersScreen(),
                ),
              );
            },
            backgroundColor: Colors.red,
            child: CircleAvatar(
              backgroundColor: const Color.fromARGB(255, 194, 194, 194),
              radius: 50, // Adjust the size of the circle avatar as needed
              child: ClipOval(
                child: Image.asset(
                  'assets/sos.png', // Replace with your image path
                  width:
                      56, // Adjust the size of the image inside the circle avatar
                  height: 56,
                  fit: BoxFit
                      .cover, // Ensures the image fits within the circular avatar
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
