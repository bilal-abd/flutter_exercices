import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Cardexo1 extends StatelessWidget {
  const Cardexo1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Card(
          child: ListTile(
            title: Text(
              "Bilal Abd",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Developpeur Flutter"),
            trailing: Chip(
              label: Text("Soumis"),
              backgroundColor: Color.fromARGB(255, 255, 205, 3),
              labelStyle: TextStyle(color: Colors.orange),
            ),
          ),
        ),
      ),
    );
  }
}
