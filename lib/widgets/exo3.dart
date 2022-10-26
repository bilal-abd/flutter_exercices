import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FormExo3 extends StatefulWidget {
  const FormExo3({super.key});

  @override
  State<FormExo3> createState() => _FormExo3State();
}

class _FormExo3State extends State<FormExo3> {
  bool isobscuretext = false;
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Exo3",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Form(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Login",
              style: TextStyle(fontSize: 50),
            ),
            const Icon(
              Icons.login,
              size: 120,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 50)),
            const Text(
              "Email",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            TextFormField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Entre ton email',
                hintStyle: TextStyle(fontSize: 16),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                contentPadding: EdgeInsets.all(16),
              ),
            ),
            const Text(
              "Mot de passe",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            TextFormField(
              obscureText: isobscuretext,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                  hintText: 'Entre ton mot de passe',
                  hintStyle: const TextStyle(fontSize: 16),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                  ),
                  contentPadding: const EdgeInsets.all(16),
                  suffixIcon: IconButton(
                    icon: Icon(isobscuretext
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        isobscuretext = !isobscuretext;
                      });
                    },
                  )),
            ),
            Row(children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
              ),
              const Text("Rester connecté"),
              const Spacer(),
              const Text('Mot de passe oublié')
            ]),
            Center(
                child: ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Connexion'),
              ),
            ))
          ]),
        ),
      ),
    );
  }
}
