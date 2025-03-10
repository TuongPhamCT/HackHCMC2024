import 'package:flutter/material.dart';
import 'package:hackhcmc2024/core/pallete.dart';

extension ExtendedTextStyle on TextStyle {
  TextStyle get light {
    return copyWith(fontWeight: FontWeight.w300, fontFamily: AppFonts.rubik);
  }

  TextStyle get regular {
    return copyWith(fontWeight: FontWeight.w400, fontFamily: AppFonts.rubik);
  }

  TextStyle get italic {
    return copyWith(
        fontWeight: FontWeight.normal,
        fontStyle: FontStyle.italic,
        fontFamily: AppFonts.rubik);
  }

  TextStyle get medium {
    return copyWith(fontWeight: FontWeight.w500, fontFamily: AppFonts.rubik);
  }

  TextStyle get fontHeader {
    return copyWith(fontSize: 22, height: 22 / 20, fontFamily: AppFonts.rubik);
  }

  TextStyle get fontCaption {
    return copyWith(fontSize: 12, height: 12 / 10, fontFamily: AppFonts.rubik);
  }

  TextStyle get semibold {
    return copyWith(fontWeight: FontWeight.w600, fontFamily: AppFonts.rubik);
  }

  TextStyle get bold {
    return copyWith(fontWeight: FontWeight.w700, fontFamily: AppFonts.rubik);
  }

  TextStyle get blackText {
    return copyWith(color: Palette.blackText, fontFamily: AppFonts.rubik);
  }

  TextStyle get grayText {
    return copyWith(color: Palette.grayText, fontFamily: AppFonts.rubik);
  }

  TextStyle get primaryTextColor {
    return copyWith(color: Palette.primaryColor, fontFamily: AppFonts.rubik);
  }

  TextStyle get darkPrimaryTextColor {
    return copyWith(color: Palette.darkBlueText, fontFamily: AppFonts.rubik);
  }

  TextStyle get whiteTextColor {
    return copyWith(color: Colors.white, fontFamily: AppFonts.rubik);
  }

  TextStyle get subTitleTextColor {
    return copyWith(color: Palette.blackText, fontFamily: AppFonts.rubik);
  }

  // convenience functions
  TextStyle setColor(Color color) {
    return copyWith(color: color, fontFamily: AppFonts.rubik);
  }

  TextStyle setTextSize(double size) {
    return copyWith(fontSize: size, fontFamily: AppFonts.rubik);
  }
}

class TextStyles {
  TextStyles(this.context);

  BuildContext? context;

  static const TextStyle defaultStyle = TextStyle(
      fontSize: 14,
      color: Palette.blackText,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.rubik);

  static const TextStyle h1 = TextStyle(
      fontSize: 30,
      color: Palette.blackText,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.rubik);
  static const TextStyle h2 = TextStyle(
      fontSize: 27.2,
      color: Palette.blackText,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.rubik);
  static const TextStyle h3 = TextStyle(
      fontSize: 24.4,
      color: Palette.blackText,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.rubik);
  static const TextStyle h4 = TextStyle(
      fontSize: 21.6,
      color: Palette.blackText,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.rubik);
  static const TextStyle h5 = TextStyle(
      fontSize: 18.8,
      color: Palette.blackText,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.rubik);
  static const TextStyle h6 = TextStyle(
      fontSize: 16,
      color: Palette.blackText,
      fontWeight: FontWeight.w400,
      height: 16 / 14,
      fontFamily: AppFonts.rubik);
  static const TextStyle slo = TextStyle(
    fontFamily: AppFonts.lexend,
    fontSize: 32,
    color: Palette.backgroundColor,
    fontWeight: FontWeight.w400,
  );
  static const TextStyle h7 = TextStyle(
      fontSize: 24,
      color: Palette.blackText,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.poppins);
  static const TextStyle h8 = TextStyle(
      fontSize: 24,
      letterSpacing: 1.305,
      color: Palette.backgroundColor,
      fontWeight: FontWeight.w600,
      fontFamily: AppFonts.poppins);
  static const TextStyle title = TextStyle(
      fontSize: 24,
      color: Palette.primaryColor,
      fontWeight: FontWeight.w600,
      fontFamily: AppFonts.inter);
  static const TextStyle staffInforDetail = TextStyle(
      fontSize: 14,
      color: Palette.rankText,
      fontWeight: FontWeight.w500,
      fontFamily: AppFonts.poppins);
  static const TextStyle labelStaffDetail = TextStyle(
      fontSize: 16,
      color: Palette.primaryColor,
      fontWeight: FontWeight.w600,
      fontFamily: AppFonts.poppins);
  static const TextStyle titleInfoDetail = TextStyle(
      fontSize: 14,
      color: Palette.infoDetail,
      fontWeight: FontWeight.w500,
      fontFamily: AppFonts.poppins);
  static const TextStyle outsideMonth = TextStyle(
      fontSize: 14,
      color: Color(0xffD6D8E1),
      fontWeight: FontWeight.w500,
      fontFamily: AppFonts.inter);
  static const TextStyle defaultMonth = TextStyle(
      fontSize: 14,
      color: Color(0xff45454A),
      fontWeight: FontWeight.w600,
      fontFamily: AppFonts.inter);
  static const TextStyle calendarNote = TextStyle(
      fontSize: 12,
      color: Palette.detailBorder,
      fontWeight: FontWeight.w500,
      fontFamily: AppFonts.inter);
  static const TextStyle inforRoomDetail = TextStyle(
    fontSize: 14,
    color: Color(0xff1B1446),
  );
  static const TextStyle descriptionRoom = TextStyle(
      fontSize: 14,
      color: Palette.rankText,
      fontWeight: FontWeight.w400,
      fontFamily: AppFonts.inter);
  static const TextStyle iconInDetailRoom = TextStyle(
      fontSize: 14,
      color: Color(0xff000000),
      fontWeight: FontWeight.w500,
      fontFamily: AppFonts.inter);
  static const TextStyle desFunction = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Palette.rankText,
  );
  static const TextStyle titlenotifi = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Palette.greenText,
    letterSpacing: 1.08,
  );
  static const TextStyle timenotifi = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Palette.detailBorder,
    letterSpacing: 0.8,
  );
  static const TextStyle titlehotelinfor = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: Palette.primaryColor,
  );
  static const TextStyle titleHeading = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: Palette.primaryColor,
  );
  static const TextStyle seeAll = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w300,
    fontSize: 12,
    color: Palette.grayText,
  );
  static const TextStyle bottomBar = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.black,
  );
  static const TextStyle buttonName = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Palette.backgroundColor,
  );
  static const TextStyle detailTitle = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: Palette.darkBlueText,
  );
  static const TextStyle ratingNumb = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w700,
    fontSize: 64,
    color: Palette.blackText,
  );

  static const TextStyle ratingText = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w300,
    fontSize: 12,
    color: Palette.blackText,
  );
  static const TextStyle total = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    color: Palette.primaryColor,
  );
  static const TextStyle roomProps = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: Palette.primaryColor,
  );
  static const TextStyle roomPropsContent = TextStyle(
    fontFamily: AppFonts.inter,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: Palette.rankText,
  );
  static const TextStyle noInternetTitle = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: Colors.black,
  );
  static const TextStyle noInternetDes = TextStyle(
    fontFamily: AppFonts.lexend,
    fontWeight: FontWeight.w300,
    fontSize: 13,
    color: Colors.black,
  );

  static const TextStyle nameRoomItem = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.w800,
    fontSize: 16,
    color: Palette.darkBlueText,
  );

  static const TextStyle monthStyle = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: Palette.darkBlueText,
  );

  static const TextStyle receiptStatus = TextStyle(
    fontFamily: AppFonts.poppins,
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Palette.darkBlueText,
  );
}

// How to use?
// Text('test text', style: TextStyles.normalText.semibold.whiteColor);
// Text('test text', style: TextStyles.itemText.whiteColor.bold);
class AppFonts {
  static const String rubik = 'Rubik';
  static const String lexend = 'Lexend';
  static const String poppins = 'Poppins';
  static const String inter = 'Inter';
}
