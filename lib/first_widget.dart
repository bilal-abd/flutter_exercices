import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/widgets/exo1.dart';
import 'package:flutter_application_1/widgets/exo2.dart';
import 'package:flutter_application_1/widgets/exo3.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: FormExo3());
  }
}
