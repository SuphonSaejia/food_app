import 'dart:async';

import 'package:flutter/material.dart';

class NumberStream extends StatelessWidget {
  const NumberStream({super.key});

  Stream<int> numberStream() {
    int number = 0;
    final controller = StreamController<int>();
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      controller.add(number++);
    });
    return controller.stream;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NumberStream'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: numberStream(),
          builder: (context, snapshot) {
            if (snapshot.data == null) return const CircularProgressIndicator();

            return Text("${snapshot.data}");
          },
        ),
      ),
    );
  }
}
