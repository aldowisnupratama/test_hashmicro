import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constant/assets.dart';
import '../../../../core/constant/dimens.dart';
import '../../../../core/constant/style.dart';
import '../../domain/entity/position_enitity.dart';

class CoordinateWidget extends StatelessWidget {
  final String coordinateName;
  final PositionEntity positionEntity;
  const CoordinateWidget(
      {Key? key, required this.coordinateName, required this.positionEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          coordinateName,
          style: HMStyle.greyCaption,
        ),
        const SizedBox(
          height: Dimens.tiny,
        ),
        Row(
          children: [
            SvgPicture.asset(Assets.geotagging),
            const SizedBox(
              width: Dimens.tiny,
            ),
            Text("(${positionEntity.longitude},${positionEntity.latitude})"),
          ],
        ),
      ],
    );
  }
}
