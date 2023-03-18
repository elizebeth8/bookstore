import 'package:bookstore/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
             verticalSpacing(41),
             Row(
              children: [
                Text("20",style: TextStyle(
                  color: Color.fromARGB(255, 92, 3, 92),
                  fontSize: 45
                ),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Thu'),
                    Text('Feb 2023'),
                  ],
                )
              ],
             )
        ],
      ),
    );
  }
}