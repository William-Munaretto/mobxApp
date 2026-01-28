import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_app/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class EntradaTempo extends StatelessWidget {
  final int valor;
  final String titulo;
  final void Function()? incrementar;
  final void Function()? decrementar;
  const EntradaTempo({super.key, required this.valor, required this.titulo, this.incrementar, this.decrementar});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(titulo, style: const TextStyle(fontSize: 25)),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: incrementar,
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor: store.estaTrabalhando() ? Colors.red : Colors.green,
              ),
              child: Icon(Icons.arrow_upward, color: Colors.white),
            ),
            Text('$valor min', style: const TextStyle(fontSize: 18)),
            ElevatedButton(
              onPressed: decrementar,
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor: store.estaTrabalhando() ? Colors.red : Colors.green,
              ),
              child: Icon(Icons.arrow_downward, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
