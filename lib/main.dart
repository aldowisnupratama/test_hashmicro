import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hm_test/core/utils/app_route.dart';
import 'package:hm_test/injection_container.dart';
import 'package:hm_test/features/attendance/presentation/bloc/attendance_bloc.dart';
import 'package:path_provider/path_provider.dart';

import 'features/attendance/data/models/position_models.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive.init(appDocumentDir.path);
  Hive.registerAdapter(PositionAdapter());
  await Hive.openBox<PositionModels>("position_box");
  runApp(const HMTestApp());
}

class HMTestApp extends StatelessWidget {
  const HMTestApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => sl.get<AttendanceBloc>())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRoute().generateRoute,
      ),
    );
  }
}
