import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto/pages/dashboard/dashboard.dart';
import 'package:proyecto/pages/home_page.dart';
import 'package:proyecto/pages/login_screen.dart';
import 'package:proyecto/pages/medicina/provider_medicina.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ProviderMedicina(), 
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
       
        scaffoldBackgroundColor: Color.fromARGB(255, 223, 241, 255)
      ),
      title: 'Material App',
      // home: LoginScreen()
      home: Dashboard()
    );
  }
}