import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_colors.dart';
import 'package:payflow/shared/themes/app_text_style.dart';
import 'package:payflow/shared/widgets/set_label_buttons/set_label_button.dart';

class BottunSheet extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secodaryLabel;
  final VoidCallback secodaryOnPressed;
  final String title;
  final String subtitle;

  const BottunSheet(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secodaryLabel,
      required this.secodaryOnPressed,
      required this.title,
      required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: RotatedBox(
        quarterTurns: 1,
        child: Material(
          child: Container(
            color: AppColors.shape,
            child: Column(children: [
              Expanded(
                  child: Container(
                color: Colors.black.withOpacity(0.7),
              )),
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
                            text: '\n$subtitle',
                            style: TextStyles.buttonHeading,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 1,
                    color: AppColors.atroke,
                  ),
                  SetLabelButtons(
                      enablePrimaryColor: true,
                      primaryLabel: primaryLabel,
                      primaryOnPressed: primaryOnPressed,
                      secodaryLabel: secodaryLabel,
                      secodaryOnPressed: secodaryOnPressed),
                  SizedBox(
                    height: 4,
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
