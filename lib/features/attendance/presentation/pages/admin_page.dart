import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant/colors.dart';
import '../../../../core/constant/dimens.dart';
import '../../../../core/constant/style.dart';
import '../bloc/attendance_bloc.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Dimens.medium, vertical: Dimens.large),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(width: 1, color: Colors.white)),
                      padding: const EdgeInsets.all(Dimens.atom),
                      child: const Icon(
                        Icons.close_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: Dimens.superLarge,
                ),
                Text(
                  "Salemat Datang, Admin.",
                  textAlign: TextAlign.left,
                  style: HMStyle.defaultStyle.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: Dimens.atom,
                ),
                Text(
                  "Anda dapat melakukan konfigurasi koordinat kantor anda",
                  textAlign: TextAlign.left,
                  style: HMStyle.defaultStyle.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(height: Dimens.medium),
                Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: AppColors.light,
                                borderRadius: BorderRadius.circular(20)),
                            padding: const EdgeInsets.symmetric(
                                horizontal: Dimens.medium,
                                vertical: Dimens.tiny),
                            child: Center(
                                child: BlocBuilder<AttendanceBloc,
                                    AttendanceState>(
                              buildWhen: (previous, current) =>
                                  previous != current,
                              builder: (context, state) {
                                return Text(
                                    "(${state.officePositionEntity.longitude}, ${state.officePositionEntity.latitude})");
                              },
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: Dimens.large,
                        ),
                        MaterialButton(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          color: AppColors.light,
                          onPressed: () {
                            context.read<AttendanceBloc>().add(DoGetPosition());
                            context
                                .read<AttendanceBloc>()
                                .add(DoGetAllPosition());
                          },
                          child: Text(
                            "Set",
                            style: HMStyle.titles[1],
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Tekan tombol set maka anda akan mendapatkan koordinat terkini",
                      style: HMStyle.caption.copyWith(color: AppColors.light),
                    ),
                    const SizedBox(
                      height: Dimens.megaLarge,
                    ),
                  ],
                ),
                Text(
                  "History Koordinat",
                  style: HMStyle.titles[1]!.copyWith(color: AppColors.light),
                ),
                const SizedBox(
                  height: Dimens.medium,
                ),
                Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.light,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: BlocBuilder<AttendanceBloc, AttendanceState>(
                        builder: (context, state) {
                          if (state.positionEnitities.isNotEmpty) {
                            final list =
                                state.positionEnitities.reversed.toList();

                            return ListView.builder(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: Dimens.medium,
                                    vertical: Dimens.tiny),
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: state.positionEnitities.length,
                                itemBuilder: (context, index) => Text(
                                    "(${list[index].longitude}, ${list[index].latitude})"));
                          }
                          if (state.onLoad) {
                            return Container();
                          }
                          return Container();
                        },
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
