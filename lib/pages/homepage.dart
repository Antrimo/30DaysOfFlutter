import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = 'Kartikey';
    var one = 'Demo';
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Flutter $one'))),
      body: Center(
        child: Text('Welcome to $days Days of Flutter by $name'),
      ),
      drawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 30,
        ),
      ),
    );
  }
}
