import 'dart:async';

import 'package:flutter/material.dart';

class NumberStream extends StatelessWidget {
  NumberStream({super.key});

  final controller = StreamController<int>();
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NumberStream'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: controller.stream,
          builder: (context, snapshot) {
            if (snapshot.data == null) return const CircularProgressIndicator();

            return Text("${snapshot.data}");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          number++;
          controller.add(number);
        },
      ),
    );
  }
}
