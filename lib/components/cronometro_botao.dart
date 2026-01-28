import 'package:flutter/material.dart';
import 'package:mobx_app/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class CronometroBotao extends StatelessWidget {
  const CronometroBotao({super.key, required this.texto, required this.icone, this.click});

  final String texto;
  final IconData icone;
  final void Function()? click;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: click,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icone, color: Colors.white, size: 30),
          SizedBox(width: 10),
          Text(texto, style: TextStyle(color: Colors.white, fontSize: 20)),
        ],
      ),
    );
  }
}
