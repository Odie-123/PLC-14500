import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simulator/logic_blocks/register.dart';
import 'package:simulator/widgets/output_indicator.dart';

class OutputConsole extends StatefulWidget {
  late final List<OutputIndicator> outputIndicators;
  late final Register outputRegister;

  OutputConsole({super.key, required this.outputRegister});

  @override
  State<StatefulWidget> createState() => _OutputConsoleState();
}

class _OutputConsoleState extends State<OutputConsole> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (final status in widget.outputRegister.status)
        OutputIndicator(status: status)
    ]);
  }
}