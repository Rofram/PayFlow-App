import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_styles.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_buttons_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryonPressed;

  final String secondaryLabel;
  final VoidCallback secondaryonPressed;

  final String title;
  final String description;

  const BottomSheetWidget(
      {Key? key,
      required this.primaryLabel,
      required this.primaryonPressed,
      required this.secondaryLabel,
      required this.secondaryonPressed,
      required this.title,
      required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(40),
                      child: Text.rich(
                        TextSpan(
                            text: title,
                            style: TextStyles.buttonBoldHeading,
                            children: [
                              TextSpan(
                                  text: "\n$description",
                                  style: TextStyles.buttonHeading)
                            ]),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 1,
                      color: AppColors.stroke,
                    ),
                    SetLabelButtons(
                        enablePrimaryColor: true,
                        primaryLabel: primaryLabel,
                        secondaryLabel: secondaryLabel,
                        primaryonPressed: primaryonPressed,
                        secondaryonPressed: secondaryonPressed)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
