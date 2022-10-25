import 'package:flutter/material.dart';

class CounterItem extends StatefulWidget {
  const CounterItem({super.key, required this.counterLabel, required this.isSelected});
  final String counterLabel;
  final bool isSelected;

  @override
  State<CounterItem> createState() => _CounterItemState();
}

class _CounterItemState extends State<CounterItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 50,
      color: widget.isSelected ? Colors.blue : Colors.blue[200],
      child: Text(
        widget.counterLabel,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
