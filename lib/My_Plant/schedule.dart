import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class schedule extends StatefulWidget {
  const schedule({super.key});

  @override
  State<schedule> createState() => _scheduleState();
}

class _scheduleState extends State<schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
    );
  }
}