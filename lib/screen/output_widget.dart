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
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.45,
      margin: EdgeInsets.symmetric(
        horizontal: mediaQuery.size.width * 0.1,
        vertical: mediaQuery.size.height * 0.075,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'People with this name are, on average,',
            style: theme.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                analysis.age,
                style: TextStyle(fontSize: 300),
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
    ;
  }
}
