import 'package:flutter/material.dart';
import 'package:unify/utils/constants/colors.dart';

class TFormDivider extends StatelessWidget {
  const TFormDivider({
    super.key, required this.dividerText
  });

  final String dividerText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Flexible(child: Divider(color: TColors.secondary300, thickness: 0.5, indent: 5, endIndent: 60,)),
         Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
        const Flexible(child: Divider(color: TColors.secondary300, thickness: 0.5, indent: 60, endIndent: 5,))
      ],
    );
  }
}