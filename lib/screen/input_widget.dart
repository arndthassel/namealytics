import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:namealytics/feature/bloc/get_age_bloc.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key, required this.maxHeight});
  final double maxHeight;
  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final _textController = TextEditingController();
  final _focusNode = FocusNode();
  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Container(
      height: widget.maxHeight * 0.4,
      padding: EdgeInsets.fromLTRB(
        mediaQuery.size.width * 0.1,
        widget.maxHeight * 0.05,
        mediaQuery.size.width * 0.1,
        widget.maxHeight * 0.05,
      ),
      child: FocusScope(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Which name would you like to analyze?',
              style: theme.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            TextField(
              controller: _textController,
              decoration: const InputDecoration(
                hintText: 'e.g. Friederike',
              ),
              onEditingComplete: () =>
                  FocusManager.instance.primaryFocus?.unfocus(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.3,
                  child: OutlinedButton.icon(
                    onPressed: () {
                      context.read<GetAgeBloc>().add(
                            const GetAgeEvent.restartPressed(),
                          );
                      _textController.clear();
                    },
                    icon: const Icon(Icons.restart_alt_rounded),
                    label: const Text('Restart'),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<GetAgeBloc>().add(
                            GetAgeEvent.getAgePressed(
                                name: _textController.text),
                          );
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    child: const Text('Get Age!'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
