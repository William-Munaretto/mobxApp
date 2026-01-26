import 'package:flutter/material.dart';

class EntradaTempo extends StatelessWidget {
  final int valor;
  final String titulo;
  const EntradaTempo({super.key, required this.valor, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(titulo, style: const TextStyle(fontSize: 25)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(15), backgroundColor: Colors.white),
              child: Icon(Icons.arrow_downward, color: Colors.red),
            ),
            Text('$valor min', style: const TextStyle(fontSize: 18)),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(15), backgroundColor: Colors.white),
              child: Icon(Icons.arrow_upward, color: Colors.red),
            ),
          ],
        ),
      ],
    );
  }
}
