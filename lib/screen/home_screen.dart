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
    final maxHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(title: const Text('Namealytics')),
      body: Container(
        height: maxHeight,
        child: SingleChildScrollView(
          // physics: const NeverScrollableScrollPhysics(),
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
