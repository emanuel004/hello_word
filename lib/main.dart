import 'package:flutter/material.dart';
import 'package:hello_word_app/src/presentation/screens/counter/counter_function_screen.dart';
import 'package:hello_word_app/src/presentation/screens/counter/counter_screen.dart';

void main() {
  //corre el widget inicial
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  //implementacion del StatelessWidget
  Widget build(BuildContext context) {
    //devuelve un widget
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.amber,
        ),
        home: const CounterFunctionScreen());
  }
}
