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
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Form(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "Notes de frais",
            style: TextStyle(fontSize: 50),
          ),
          Icon(
            Icons.menu_book_sharp,
            size: 120,
          ),
          Padding(padding: EdgeInsets.only(bottom: 50)),
          Text("Email"),
          TextFormField(
            obscureText: isobscuretext,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                hintText: 'Entre ton email',
                hintStyle: TextStyle(fontSize: 16),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.grey),
                ),
                contentPadding: EdgeInsets.all(16),
                suffixIcon: IconButton(
                  icon: Icon(
                      isobscuretext ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      isobscuretext = !isobscuretext;
                    });
                  },
                )),
          ),
          Text("Mot de passe"),
          TextFormField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Entre ton mot de passe',
              hintStyle: TextStyle(fontSize: 16),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1, color: Colors.grey),
              ),
              contentPadding: EdgeInsets.all(16),
            ),
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
            Text("Rester connecté"),
            Spacer(),
            Text('Mot de passe oublié')
          ]),
          Center(
              child: ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text('Connexion'),
            ),
          ))
        ]),
      ),
    );
  }
}
