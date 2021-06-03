import 'package:flutter/material.dart';
import 'package:orcameu_app/screens/movimentacoes/tabela_mes.dart';

void main() {
  runApp(OrcameuApp());
}

class OrcameuApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ORÇAMEU - SUA VIDA FINANCEIRA EM SUAS MÃOS',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabelaMes(),
    );
  }
}
