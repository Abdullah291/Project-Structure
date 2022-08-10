import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resident/feature/view/home_screen.dart';
import 'package:resident/feature/view/maintenance_screen.dart';
import 'package:resident/feature/view/profile_screen.dart';
import 'package:resident/feature/widget/tabbar_widget.dart';
import 'core/theme/theme.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: 'Resident App',
      theme: ResidentTheme.lightTheme(context),
      home: HomeScreen(),
    );
  }
}





