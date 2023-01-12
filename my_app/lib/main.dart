import 'package:flutter/material.dart';

import 'package:my_app/screens/counter_screen.dart';
// import 'package:my_app/screens/home_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // home: HomeScreen(),
      home: CounterScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
