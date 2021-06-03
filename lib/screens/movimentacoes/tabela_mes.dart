import 'package:flutter/material.dart';
import 'package:orcameu_app/models/movimentacao.dart';

class TabelaMes extends StatefulWidget {
  final List<Movimentacao> _movimentacoes = [
    Movimentacao('Aluguel', 2152.09, '14/05/2021', 'P', 'N')
  ];

  @override
  State<StatefulWidget> createState() {
    return TabelaMesState();
  }
}

class TabelaMesState extends State<TabelaMes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MOVIMENTAÇÕES DO MÊS'),
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'DESCRIÇÃO',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'VALOR',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'DATA',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'CRITÉRIO',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
          DataColumn(
            label: Text(
              'SITUAÇÃO',
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ],
        rows: widget._movimentacoes
            .map(
              (mov) => DataRow(
                cells: <DataCell>[
                  DataCell(Text(mov.descricao)),
                  DataCell(Text(mov.valor.toString())),
                  DataCell(Text(mov.data)),
                  DataCell(Text(mov.criterio)),
                  DataCell(Text(mov.situacao)),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
