import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hm_test/core/constant/dimens.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/style.dart';
import '../bloc/attendance_bloc.dart';
import 'coordinate_widget.dart';

class AttendanceWidget extends StatelessWidget {
  const AttendanceWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttendanceBloc, AttendanceState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.medium),
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18))),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: Dimens.large,
                    ),
                    Text(
                      !state.isCheckInSucces
                          ? "Sudahkah anda check in?"
                          : "Terima kasih",
                      style: HMStyle.whiteTitles[1],
                    ),
                    const SizedBox(
                      height: Dimens.atom,
                    ),
                    Text(
                      !state.isCheckInSucces
                          ? "Silahkan check in terlebih dahulu"
                          : "Jangan lupa check out ya :D",
                      style: HMStyle.whiteSubtitle,
                    ),
                    const SizedBox(
                      height: Dimens.medium,
                    )
                  ]),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: AppColors.light,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18),
                      bottomRight: Radius.circular(18))),
              padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.medium, vertical: Dimens.large),
              child: Column(
                children: [
                  CoordinateWidget(
                    coordinateName: "Check in",
                    positionEntity: state.checkInPositionEntity,
                  ),
                  const SizedBox(
                    height: Dimens.veryTiny,
                  ),
                  CoordinateWidget(
                    coordinateName: "Check Out",
                    positionEntity: state.checkOutPositionEntity,
                  ),
                  !state.isCheckInSucces
                      ? Align(
                          alignment: Alignment.bottomRight,
                          child: MaterialButton(
                            elevation: 0,
                            color: AppColors.primary,
                            height: Dimens.superLarge,
                            minWidth: Dimens.doubleUltraLarge,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            onPressed: () {
                              context.read<AttendanceBloc>().add(UserCheckIn());
                            },
                            child: Text(
                              "Check In",
                              style: HMStyle.whiteTitles[1],
                            ),
                          ),
                        )
                      : Align(
                          alignment: Alignment.bottomRight,
                          child: MaterialButton(
                            elevation: 0,
                            color: AppColors.redNegative,
                            height: Dimens.superLarge,
                            minWidth: Dimens.doubleUltraLarge,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18)),
                            onPressed: () {
                              context
                                  .read<AttendanceBloc>()
                                  .add(UserCheckOut());
                            },
                            child: Text(
                              "Check Out",
                              style: HMStyle.whiteTitles[1],
                            ),
                          ),
                        ),
                  state.tooFar
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Anda harus berada dikantor",
                            style: HMStyle.redCaption,
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    width: Dimens.medium,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: Dimens.tripleUltraLarge,
            ),
          ],
        );
      },
    );
  }
}
