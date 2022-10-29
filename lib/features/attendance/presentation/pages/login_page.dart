import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constant/assets.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/dimens.dart';
import '../../../../core/constant/style.dart';
import '../../../../core/utils/app_page_name.dart';
import '../bloc/attendance_bloc.dart';
import '../widgets/outline_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: ListView(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimens.medium, vertical: Dimens.large),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            const SizedBox(
              height: Dimens.doubleUltraLarge,
            ),
            Text(
              "Welcome HMS\nAplikasi Absen Masa Kini !!!",
              style: HMStyle.blackHeadlines[3]!.copyWith(
                  color: AppColors.light, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: Dimens.tripleUltraLarge,
            ),
            LottieBuilder.asset(Assets.loginLottie),
            const SizedBox(
              height: Dimens.tripleUltraLarge,
            ),
            CostumeOutlineButton(
                onTap: () {
                  Navigator.pushNamed(context, AppPageName.adminPage);
                  context.read<AttendanceBloc>().add(DoGetAllPosition());
                },
                outlineColor: AppColors.light,
                buttonName: "Admin"),
            const SizedBox(height: Dimens.medium),
            BlocBuilder<AttendanceBloc, AttendanceState>(
              buildWhen: (previous, current) => previous != current,
              builder: (context, state) {
                if (state.officePositionEntity.latitude != 0) {
                  return CostumeOutlineButton(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppPageName.attendancePage);
                      },
                      outlineColor: AppColors.light,
                      buttonName: "User");
                }
                return Container();
              },
            ),
            const SizedBox(height: Dimens.medium),
            Text(
              "Set Office address terlebih dahulu sebagai admin",
              style: HMStyle.whiteBold,
            )
          ]),
    );
  }
}
