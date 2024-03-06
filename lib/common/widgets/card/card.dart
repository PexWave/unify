import 'package:flutter/material.dart';
import 'package:unify/features/merchandise/screen/widgets/merch_sheet.dart';
import 'package:unify/utils/constants/colors.dart';
import 'package:unify/utils/constants/sizes.dart';

class CardWidget extends StatelessWidget {
  final ClipRRect imageWidget;
  final Flexible content;

  const CardWidget({
    super.key,
    required this.imageWidget,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: TSizes.cardHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.borderRadiusMd),
        color: Colors.transparent,
        border: Border.all(
          color: TColors.secondary300,
          width: 1.0,
        ),
      ),
      child: Row(
        children: [
          imageWidget,
          content,
        ],
      ),
    );
  }
}
