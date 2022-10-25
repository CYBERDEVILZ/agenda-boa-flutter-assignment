// GENERALIZED COUNTER SUB PAGE

import 'package:agendboa/provider/count_value_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends StatefulWidget {
  const Counter({super.key, required this.index});

  final int index;
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter ${widget.index + 1}"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CountValue>().incrementCountValue(widget.index);
        },
        child: const Icon(Icons.add),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Count value: ${context.watch<CountValue>().getCountValue(widget.index)}",
              style: const TextStyle(fontSize: 30),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CountValue>().incrementCountValue(widget.index);
              },
              child: const Text("increment me!"),
            )
          ],
        ),
      ),
    );
  }
}
