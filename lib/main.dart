import 'package:flutter/material.dart';
import 'package:netclan_clone/pages/explore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NetClan-Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 36, 121, 224)),
        useMaterial3: true,
      ),
      home: const Explore()
    );
  }
}

