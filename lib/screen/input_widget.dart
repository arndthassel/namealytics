import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key});

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Container(
      height: mediaQuery.size.height * 0.3,
      margin: EdgeInsets.symmetric(
        horizontal: mediaQuery.size.width * 0.1,
        vertical: mediaQuery.size.height * 0.1,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Which name would you like to analyze?',
            style: theme.textTheme.headlineSmall,
            textAlign: TextAlign.center,
          ),
          TextField(
            controller: _textController,
            decoration: const InputDecoration(
              labelText: 'Name',
              hintText: 'e.g. Friederike',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.restart_alt_rounded),
                  label: const Text('Restart'),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Get Age!'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
