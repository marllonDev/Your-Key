import 'package:flutter/material.dart';

class CheckboxState extends StatefulWidget {
  const CheckboxState({super.key});

  @override
  State<StatefulWidget> createState() => _CheckboxState();
}

class _CheckboxState extends State<CheckboxState> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Row(
        children: [
          Checkbox(
            value: true,
            onChanged: null,
          ),
        ],
      ),
    );
  }
}
