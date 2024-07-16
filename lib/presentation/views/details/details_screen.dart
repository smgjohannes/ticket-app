import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../viewmodels/details_viewmodel.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DetailsViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Details Screen'),
        ),
        body: Consumer<DetailsViewModel>(
          builder: (context, model, child) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Welcome to the Details Screen'),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Back to Home Screen'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
