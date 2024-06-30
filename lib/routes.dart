import 'package:flutter/material.dart';
import 'package:hackhcmc2024/screen/add_employee_screen.dart';
import 'package:hackhcmc2024/screen/home_screen.dart';
import 'package:hackhcmc2024/screen/infor_screen.dart';
import 'package:hackhcmc2024/screen/notification_screen.dart';
import 'package:hackhcmc2024/screen/setting_screen.dart';
import 'package:hackhcmc2024/screen/trang_chu.dart';

final Map<String, WidgetBuilder> routes = {
  HomeScreen.routeName: (context) => HomeScreen(),
  InformationScreen.routeName: (context) => InformationScreen(),
  TrangChu.routeName: (context) => TrangChu(),
  SettingScreen.routeName: (context) => SettingScreen(),
  NotificationScreen.routeName: (context) => NotificationScreen(),
  AddEmployee.routeName: (context) => AddEmployee(),
};
