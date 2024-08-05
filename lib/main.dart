import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:riverpod/riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final name = "Jishnu Prasad Samal";
  static const tasks = ['Buy Milk', 'Complete Homework'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Syncr'),
        ),
        body: GridView.count(
          primary: true,
          padding: const EdgeInsets.all(8),
          scrollDirection: Axis.vertical,
          crossAxisCount: 1,
          children: [
          ],
        ),
      ),
    );
  }
}
