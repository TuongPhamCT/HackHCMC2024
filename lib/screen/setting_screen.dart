import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:gap/gap.dart';
import 'package:hackhcmc2024/core/pallete.dart';
import 'package:hackhcmc2024/core/textstyle.dart';
import 'package:hackhcmc2024/screen/home_screen.dart';
import 'package:hackhcmc2024/screen/infor_screen.dart';
import 'package:hackhcmc2024/screen/trang_chu.dart';

class SettingScreen extends StatefulWidget {
  static const String routeName = 'setting_screen';
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Palette.primaryColor,
        title: Text('TÀI KHOẢN',
            style: TextStyles.slo.bold.copyWith(
              shadows: [
                const Shadow(
                  color: Colors.black12,
                  offset: Offset(3, 6),
                  blurRadius: 6,
                )
              ],
            )),
        centerTitle: true,
        toolbarHeight: kToolbarHeight * 1.5,
      ),
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Gap(15),
            Container(
              alignment: Alignment.center,
              child: Container(
                height: 132,
                width: 132,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/avatar.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Gap(10),
            Text(
              'Nguyễn Văn A',
              style: TextStyles.title,
            ),
            const Gap(5),
            Text(
              'nguyenvana@gmail.com',
              style: TextStyles.descriptionRoom.copyWith(
                fontSize: 16,
              ),
            ),
            const Gap(50),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: const Icon(
                      FontAwesomeIcons.user,
                      color: Palette.primaryColor,
                      size: 20,
                    ),
                  ),
                  Text(
                    'Cập nhật thông tin',
                    style: TextStyles.descriptionRoom.copyWith(
                      color: Palette.primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: const Icon(
                      FontAwesomeIcons.language,
                      color: Palette.primaryColor,
                      size: 20,
                    ),
                  ),
                  Text(
                    'Ngôn ngữ',
                    style: TextStyles.descriptionRoom.copyWith(
                      color: Palette.primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.add_alert_rounded,
                      color: Palette.primaryColor,
                      size: 25,
                    ),
                  ),
                  Text(
                    'Thông báo',
                    style: TextStyles.descriptionRoom.copyWith(
                      color: Palette.primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: const Icon(
                      FontAwesomeIcons.solidCircleQuestion,
                      color: Palette.primaryColor,
                      size: 20,
                    ),
                  ),
                  Text(
                    'Hỗ trợ',
                    style: TextStyles.descriptionRoom.copyWith(
                      color: Palette.primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            GestureDetector(
              onTap: () async {
                showDialog(
                  context: context,
                  builder: (dialogContext) {
                    return AlertDialog(
                      title: const Text('Xác nhận'),
                      content: const Text('Bạn chắc chắn muốn đăng xuất?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(dialogContext).pop();
                          },
                          child: Text(
                            'Huỷ',
                            style: TextStyles.descriptionRoom.copyWith(
                              color: Palette.grayText,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(dialogContext).pop();
                          },
                          child: Text(
                            'Đăng xuất',
                            style: TextStyles.descriptionRoom.copyWith(
                              color: Palette.primaryColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Row(
                children: [
                  Container(
                    width: 50,
                    alignment: Alignment.center,
                    child: const Icon(
                      FontAwesomeIcons.signOut,
                      color: Palette.primaryColor,
                      size: 20,
                    ),
                  ),
                  Text(
                    'Sign Out',
                    style: TextStyles.descriptionRoom.copyWith(
                      color: Palette.primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: Palette.primaryColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.home,
              color: Colors.white,
            ),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.shoppingCart,
              color: Colors.white,
            ),
            label: 'Giỏ hàng',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              color: Colors.white,
            ),
            label: 'Tài khoản',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          if (index == 0) {
            Navigator.of(context).pushNamed(TrangChu.routeName);
          } else if (index == 1) {
            Navigator.of(context).pushNamed(HomeScreen.routeName);
          }
        },
      ),
    );
  }
}
