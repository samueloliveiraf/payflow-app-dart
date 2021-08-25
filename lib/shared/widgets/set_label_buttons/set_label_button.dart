import 'package:flutter/material.dart';
import 'package:payflow/shared/themes/app_text_style.dart';
import 'package:payflow/shared/widgets/divider/divider_virtical_widget.dart';
import 'package:payflow/shared/widgets/label_button/label_button.dart';

class SetLabelButtons extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secodaryLabel;
  final VoidCallback secodaryOnPressed;
  final bool enablePrimaryColor;

  const SetLabelButtons(
      {Key? key,
      required this.primaryLabel,
      required this.primaryOnPressed,
      required this.secodaryLabel,
      required this.secodaryOnPressed,
      this.enablePrimaryColor = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      child: Row(
        children: [
          Expanded(
            child: LabelButton(
              label: primaryLabel,
              onPressed: primaryOnPressed,
              style: enablePrimaryColor ? TextStyles.buttonBoldPrimary : null,
            ),
          ),
          DividerVertical(),
          Expanded(
            child: LabelButton(
              label: secodaryLabel,
              onPressed: secodaryOnPressed,
            ),
          )
        ],
      ),
    );
  }
}
