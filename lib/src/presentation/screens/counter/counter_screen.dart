import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  //creacion del estado y llamado a la otra clase
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

//creacion del widget, con el estado del counter
class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('myApp Conter Function Screen')
        ),
        leading: IconButton(
          icon: const Icon(Icons.refresh_rounded), 
          onPressed: () {  },),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style:
                  const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
            Text('Click${counter < 2 ? '' : 's'}' )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter += 1;
          //actualiza el estado en tiempo real
          setState(() {
            
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
