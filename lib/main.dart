import 'package:age_calculator_app/Presentation/Routes/routes_generator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Age Calculator',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Color.fromARGB(255, 12, 70, 118),
      ),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
