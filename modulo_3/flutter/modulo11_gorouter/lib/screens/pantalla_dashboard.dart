
import 'package:flutter/material.dart';

class PantallaDashboard extends StatelessWidget {
  const PantallaDashboard({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    body: const Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.dashboard, size: 56),
        SizedBox(height: 8),
        Text('Dashboard', style: TextStyle(fontSize: 18)),
      ],
    )),
  );
}