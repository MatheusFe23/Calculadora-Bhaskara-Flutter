import 'package:flutter/material.dart';
import 'widgets/calculator_display.dart';
import 'widgets/calculator_grid.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Extensible Calculator',
          style: TextStyle(fontSize: 16),
        ),
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 35,
      ),
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CalculatorDisplay(),
              Divider(height: 1),
              CalculatorGrid(),
            ],
          ),
        ),
      ),
    );
  }
}
