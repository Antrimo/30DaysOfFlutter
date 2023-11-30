import 'package:app/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    int days = 7;
    String name1 = 'Kartikey';
    var one = 'Demo';
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Flutter $one'))),
      body: Center(
        child: Text('Welcome to Day $days of Flutter by $name1'),
      ),
      drawer: const MyDrawer(),
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
