import 'package:flutter/material.dart';
import 'package:hello_wordl/presentation/screens/counter/counter_functions_screen.dart';
//import 'package:hello_wordl/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CounterFunctionsScreen(),
    );
  }
}