import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:payflow/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:payflow/shared/widgets/boleto_tile/boleto_tile_widget.dart';

class BoletoList extends StatefulWidget {
  final BoletoListController controller;
  const BoletoList({Key? key, required this.controller}) : super(key: key);

  @override
  State<BoletoList> createState() => _BoletoListState();
}

class _BoletoListState extends State<BoletoList> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<List<Boletomodel>>(
      valueListenable: widget.controller.boletosNotifier,
      builder: (_, boletos, __) => Column(
          children: boletos.map((boleto) => BoletoTile(data: boleto)).toList()),
    );
  }
}
