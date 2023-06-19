import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  //creacion del estado y llamado a la otra clase
  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

//creacion del widget, con el estado del counter
class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('myApp Counter Screen')),
          leading: IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {},
          ),
          //colocarlo a la derecha
          actions: [
            IconButton(
              icon: const Icon(Icons.refresh_rounded),
              onPressed: () {},
            )
          ],
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
              Text('Click${counter < 2 ? '' : 's'}')
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtom(
              icon: Icons.plus_one,
              onPressed: () {
                counter++;
                setState(() {});
              },
            ),
            //seperar los botones
            const SizedBox(height: 10),
            CustomButtom(
              icon: Icons.exposure_minus_1_outlined,
              onPressed: () {
                counter--;
                setState(() {});
              },
            ),
            const SizedBox(height: 10),
            CustomButtom(
              icon: Icons.refresh_outlined,
              onPressed: () {
                counter = 0;
                setState(() {});
              },
            ),
          ],
        ));
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButtom({super.key, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      
      focusElevation: BorderSide.strokeAlignInside,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
