import 'package:flutter/material.dart';
import 'package:namealytics/screen/input_widget.dart';
import 'package:namealytics/screen/output_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Namealytics')),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: const [
              InputWidget(),
              OutputWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
