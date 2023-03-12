import 'package:flutter/material.dart';
import 'package:namealytics/feature/name_analysis_model.dart';

class OutputWidget extends StatefulWidget {
  const OutputWidget({super.key});

  @override
  State<OutputWidget> createState() => _OutputWidgetState();
}

class _OutputWidgetState extends State<OutputWidget> {
  NameAnalysisModel analysis =
      const NameAnalysisModel(age: 'dummy', name: 'dummy');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('People with this name are, on average,'),
          Text(analysis.age),
          const Text('years old.'),
        ],
      ),
    );
    ;
  }
}
