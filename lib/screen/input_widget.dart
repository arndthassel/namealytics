import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: _textController,
              decoration: const InputDecoration(
                labelText: 'Name',
                hintText: 'e.g. Friederike',
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.restart_alt_rounded),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Get Age!'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
