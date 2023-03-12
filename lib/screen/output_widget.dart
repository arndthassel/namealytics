import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OutputWidget extends StatefulWidget {
  const OutputWidget({super.key});

  @override
  State<OutputWidget> createState() => _OutputWidgetState();
}

class _OutputWidgetState extends State<OutputWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [],
      ),
    );
    ;
  }
}
