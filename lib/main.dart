import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/exo2.dart';
import 'package:flutter_application_1/first_widget.dart';
import 'package:flutter_application_1/widgets/exo4/getx_exo4_bindings.dart';
import 'package:flutter_application_1/widgets/exo4/getx_exo4_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: [
        GetPage(
          name: '/exo4',
          page: () => GetxExo4View(),
          binding: GetxExo4Bindings(),
        )
      ],
      initialRoute: "exo4",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidget(),
    );
  }
}
