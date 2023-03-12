import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:namealytics/feature/bloc/get_age_bloc.dart';
import 'package:namealytics/feature/data_model.dart';

class OutputWidget extends StatefulWidget {
  const OutputWidget({super.key});

  @override
  State<OutputWidget> createState() => _OutputWidgetState();
}

class _OutputWidgetState extends State<OutputWidget> {
  NameAnalysis analysis = const NameAnalysis(age: 'dummy', name: 'dummy');

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAgeBloc, GetAgeState>(
      builder: (context, state) {
        return state.when(
          initial: () => const CircularProgressIndicator(),
          loading: () => const CircularProgressIndicator(),
          success: (NameAnalysis analysis) =>
              AnalysisSuccess(analysis: analysis),
        );
      },
    );
    ;
  }
}


class AnalysisSuccess extends StatelessWidget {
  AnalysisSuccess({required this.analysis});
  final NameAnalysis analysis;
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