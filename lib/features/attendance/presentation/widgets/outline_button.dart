import 'package:flutter/material.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/dimens.dart';
import '../../../../core/constant/style.dart';

class CostumeOutlineButton extends StatelessWidget {
  final String buttonName;

  final Color outlineColor;
  final Function onTap;
  const CostumeOutlineButton(
      {Key? key,
      required this.onTap,
      required this.outlineColor,
      required this.buttonName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      child: InkWell(
        onTap: () {
          onTap();
        },
        borderRadius: BorderRadius.circular(18),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(width: 1, color: AppColors.light)),
          padding: const EdgeInsets.symmetric(
            vertical: Dimens.medium,
          ),
          child: Center(
            child: Text(
              buttonName,
              style: HMStyle.whiteTitles[1],
            ),
          ),
        ),
      ),
    );
  }
}
