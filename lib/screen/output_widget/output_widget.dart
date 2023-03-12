import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:namealytics/feature/bloc/get_age_bloc.dart';
import 'package:namealytics/feature/data_model.dart';
import 'package:namealytics/screen/output_widget/analysis_success.dart';

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
          failure: (exception) => const Text('Failure'),
          success: (NameAnalysis analysis) =>
              AnalysisSuccess(analysis: analysis),
        );
      },
    );
    ;
  }
}
