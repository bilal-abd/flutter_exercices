import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ButtonExo2 extends StatefulWidget {
  const ButtonExo2({super.key});

  @override
  State<ButtonExo2> createState() => _ButtonExo2State();
}

class _ButtonExo2State extends State<ButtonExo2> {
  bool isRed = true;

  @override
  void initState() {
    super.initState();
  }

  void changeColor() {
    setState(() {
      isRed = !isRed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      InkWell(
        onTap: () {
          changeColor();
        },
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: isRed ? Colors.red : Colors.green,
            ),
            width: 500,
            height: 500,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(isRed ? Icons.cancel : Icons.check),
                  Text(isRed ? 'Refusé' : 'Validé')
                ]),
          ),
        ),
      ),
    ]);
  }
}
