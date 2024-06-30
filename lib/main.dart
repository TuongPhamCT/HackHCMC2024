import 'package:flutter/material.dart';
import 'package:hackhcmc2024/routes.dart';
import 'package:hackhcmc2024/screen/trang_chu.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLogin = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GEMZ PAY',
      home: TrangChu(),
      routes: routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
