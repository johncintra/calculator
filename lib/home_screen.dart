import 'package:calculadora/material_calculator.dart';
import 'package:calculadora/price_calculator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 123, 48, 136),
        title: const Text('Calculadora de Custo'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color.fromARGB(255, 243, 213, 248), Color.fromARGB(255, 123, 48, 136)],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft
          ),
        ),
        child: Center(          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MaterialCalculator()),
                  );
                },
                child: const Text('Calcular Material', style: TextStyle(fontSize: 20),),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PriceCalculator()),
                  );
                },
                child: const Text('Calcular Preço Final', style: TextStyle(fontSize: 20),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}