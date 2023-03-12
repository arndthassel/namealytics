import 'package:flutter/material.dart';
import 'package:namealytics/feature/data_model.dart';

class AnalysisSuccess extends StatelessWidget {
  const AnalysisSuccess({super.key, required this.result});
  final NameAnalysis result;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'People named ${result.name.toUpperCase()} are, on average,',
            style: theme.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                result.age,
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
