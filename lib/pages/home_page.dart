import 'package:flutter/material.dart';
import 'package:proyecto/pages/dashboard/dashboard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Dashboard()
      );
  }
}