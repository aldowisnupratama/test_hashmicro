import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/constant/assets.dart';
import '../../../../core/constant/colors.dart';
import '../../../../core/constant/dimens.dart';
import '../../../../core/utils/app_page_name.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    changePage();
  }

  void changePage() async {
    await Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushNamed(context, AppPageName.loginPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
          child: Center(
              child: SvgPicture.asset(
        Assets.splashAnimation,
        color: AppColors.light,
        width: Dimens.canopus,
        height: Dimens.canopus,
      ))),
    );
  }
}
