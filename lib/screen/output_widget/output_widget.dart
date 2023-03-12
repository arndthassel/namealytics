import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:namealytics/feature/bloc/get_age_bloc.dart';
import 'package:namealytics/feature/data_model.dart';
import 'package:namealytics/progress_indicator.dart';
import 'package:namealytics/screen/output_widget/analysis_success.dart';

class OutputWidget extends StatefulWidget {
  const OutputWidget({super.key, required this.maxHeight});
  final double maxHeight;

  @override
  State<OutputWidget> createState() => _OutputWidgetState();
}

class _OutputWidgetState extends State<OutputWidget> {
  NameAnalysis analysis = const NameAnalysis(age: 'dummy', name: 'dummy');

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Container(
      height: widget.maxHeight * 0.6,
      padding: EdgeInsets.fromLTRB(
        mediaQuery.size.width * 0.1,
        widget.maxHeight * 0.05,
        mediaQuery.size.width * 0.1,
        widget.maxHeight * 0.05,
      ),
      child: BlocBuilder<GetAgeBloc, GetAgeState>(
        builder: (context, state) {
          return state.when(
            initial: () =>
                Container(), // initially, there is no output, so we use an empty container
            loading: () => CustomProgressIndicator(),
            failure: (message) => Text(message),
            success: (NameAnalysis result) => AnalysisSuccess(result: result),
          );
        },
      ),
    );
  }
}
