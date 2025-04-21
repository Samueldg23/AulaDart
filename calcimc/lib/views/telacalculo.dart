import 'package:calcimc/util/minhabarra.dart';
import 'package:flutter/material.dart';

class TelaCalculo extends StatefulWidget {
  const TelaCalculo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TelaCalculoState();
  }
}

class _TelaCalculoState extends State<TelaCalculo> {
  TextEditingController ctPeso = TextEditingController();
  TextEditingController ctAltura = TextEditingController();
  String resultado = "";
  Color corresultado = Colors.green;

  void mostraMensagem(String mess) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mess),
        backgroundColor: Colors.indigo,
      ),
    );
  }

  void calculaImc() {
    try {
      double peso = double.parse(ctPeso.text);
      double altura = double.parse(ctAltura.text);
      double imc = peso / (altura * altura);
      if (imc < 18.5) {
        resultado = "Abaixo do peso";
        corresultado = Colors.red;
      } else if (imc < 24.9) {
        resultado = "Peso normal";
      } else if (imc < 29.9) {
        resultado = "Sobrepeso";
        corresultado = Colors.blue;
      } else if (imc < 34.9) {
        resultado = "Obesidade 1";
        corresultado = Colors.purpleAccent;
      } else if (imc < 39.9) {
        resultado = "Obesidade 2";
        corresultado = Colors.purple;
      } else {
        resultado = "Obesidade 3";
        corresultado = Colors.black;
      }
      mostraMensagem("IMC = ${imc}");
      setState(() {});
    } catch (e) {
      mostraMensagem("ERRO $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Minhabarra(titulo: "Calculadora de IMC"),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Expanded(
          flex: 1,
          child: Column(
            spacing: 10,
            children: [
              TextField(
                decoration: InputDecoration(labelText: "Peso"),
                controller: ctPeso,
              ),
              TextField(
                decoration: InputDecoration(labelText: "Altura"),
                controller: ctAltura,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        calculaImc();
                      },
                      child: Expanded(child: Text("Calcular")),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "$resultado",
                      style: TextStyle(color: corresultado, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
