import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:payflow/shared/models/boleto_model.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';

class BoletoTile extends StatelessWidget {
  final Boletomodel data;

  const BoletoTile({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      direction: AnimatedCardDirection.right,
      curve: Curves.easeInOut,
      initDelay: const Duration(milliseconds: 300),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(data.name!, style: TextStyles.titleListTile),
        subtitle:
            Text("Vence em ${data.dueDate}", style: TextStyles.captionBody),
        trailing: Text.rich(TextSpan(
          text: "R\$ ",
          style: TextStyles.trailingRegular,
          children: [
            TextSpan(
              text: data.value!.toStringAsFixed(2),
              style: TextStyles.trailingBold,
            ),
          ],
        )),
      ),
    );
  }
}
