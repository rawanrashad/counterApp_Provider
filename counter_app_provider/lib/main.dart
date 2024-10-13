import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_provider.dart'; // Import CounterProvider
import 'counter_screen.dart'; // Import CounterScreen

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterScreen(),
    );
  }
}
