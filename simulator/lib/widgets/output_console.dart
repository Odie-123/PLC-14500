import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:simulator/logic_blocks/register.dart';
import 'package:simulator/widgets/output_indicator.dart';

class OutputConsole extends StatefulWidget {
  final Register outputRegister;
  final String label;

  const OutputConsole(
      {super.key, required this.outputRegister, required this.label});

  @override
  State<StatefulWidget> createState() => _OutputConsoleState();
}

class _OutputConsoleState extends State<OutputConsole> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(widget.label),
      for (int ix = 0; ix < widget.outputRegister.getSize(); ix++)
        OutputIndicator(status: widget.outputRegister.getBit(ix))
    ]);
  }
}
