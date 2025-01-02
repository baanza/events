import 'package:flutter/material.dart';
import 'package:myapp/pages/startpage.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    )
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Startpage();
  }
}
