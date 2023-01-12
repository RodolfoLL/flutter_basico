import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;
  void increse() {
    contador++;
    setState(() {});
  }

  void decrese() {
    contador--;
    setState(() {});
  }

  void toZero() {
    contador = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    TextStyle fontsize30 = const TextStyle(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de clicks',
              style: fontsize30,
            ),
            Text('$contador', style: fontsize30),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: CustomFloatingAction(
        increseFn: increse,
        decreseFn: decrese,
        tozeroFn: toZero,
      ),
    );
  }
}

class CustomFloatingAction extends StatelessWidget {
  final Function increseFn;
  final Function decreseFn;
  final Function tozeroFn;
  const CustomFloatingAction({
    Key? key,
    required this.increseFn,
    required this.decreseFn,
    required this.tozeroFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => increseFn(),
          child: const Icon(Icons.exposure_plus_1_outlined),
        ),
        FloatingActionButton(
          onPressed: () => tozeroFn(),
          child: const Icon(Icons.exposure_zero),
        ),
        FloatingActionButton(
          onPressed: () => decreseFn(),
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
      ],
    );
  }
}
