import 'package:flutter/material.dart';
import 'package:namealytics/feature/data_model.dart';

class AnalysisSuccess extends StatelessWidget {
  AnalysisSuccess({required this.analysis});
  final NameAnalysis analysis;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'People named ${analysis.name.toUpperCase()} are, on average,',
            style: theme.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                analysis.age,
                style: const TextStyle(fontSize: 300),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Text(
            'years old.',
            style: theme.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
