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
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Exo2",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Bouton Status Muable :",
            style: TextStyle(fontSize: 20),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 10)),
          InkWell(
            onTap: () {
              changeColor();
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isRed ? Colors.red : Colors.green,
              ),
              width: 100,
              height: 100,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(isRed ? Icons.cancel : Icons.check),
                    Text(isRed ? 'Refusé' : 'Validé')
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
