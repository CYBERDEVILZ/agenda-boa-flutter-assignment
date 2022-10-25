import 'package:agendboa/pages/counter.dart';
import 'package:agendboa/widgets/bottom_nav_bar_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Counter(index: index),

      // bottom nav bar
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // COUNTER 1 ITEM
          Expanded(
            child: GestureDetector(
              onTap: () {
                index = 0;
                setState(() {});
              },
              child: CounterItem(counterLabel: "Counter 1", isSelected: index == 0 ? true : false),
            ),
          ),

          // COUNTER 2 ITEM
          Expanded(
            child: GestureDetector(
              onTap: () {
                index = 1;
                setState(() {});
              },
              child: CounterItem(counterLabel: "Counter 2", isSelected: index == 1 ? true : false),
            ),
          ),

          // COUNTER 3 ITEM
          Expanded(
            child: GestureDetector(
              onTap: () {
                index = 2;
                setState(() {});
              },
              child: CounterItem(counterLabel: "Counter 3", isSelected: index == 2 ? true : false),
            ),
          ),
        ],
      ),
    );
  }
}
