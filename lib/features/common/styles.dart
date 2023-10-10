import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// класс для описания стиля текста
class CustomTextStyle {
  static TextStyle reupWhite = GoogleFonts.delaGothicOne(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.64,
  );
//обычный текст
//название бренда в коллекции
  static const TextStyle promoTextStyle = TextStyle(
    fontFamily: 'Gilroy',
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w300,
    letterSpacing: 0.98,
  );

//хедер
  static TextStyle headerTextStyle = GoogleFonts.delaGothicOne(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.96,
  );

//заголовок в промо
  static TextStyle titlePromoTextStyle = GoogleFonts.delaGothicOne(
    color: Colors.black,
    fontSize: 32,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.28,
  );

//подзаголовок в промо
  static TextStyle subtitlePromoTextStyle = GoogleFonts.delaGothicOne(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.80,
  );

  //текст бренда в карточке товара
  static const TextStyle brandTextStyle = TextStyle(
    color: Color(0xFF333333),
    fontSize: 14,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w300,
    letterSpacing: 0.98,
  );

//название товара в карточке товара
  static const TextStyle productTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
    letterSpacing: 0.98,
  );

// цена в карточке товара
// название коллекции
  static const TextStyle boldTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    letterSpacing: 0.98,
  );

  static TextStyle reupChoiseTitle = GoogleFonts.delaGothicOne(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.40,
  );

  static const TextStyle reupChoiseText = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w400,
    letterSpacing: 0.98,
  );

  static const TextStyle reupCartName = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    letterSpacing: 1.30,
  );

  static const TextStyle reupLastPrice = TextStyle(
    color: Colors.grey,
    fontSize: 12,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
    letterSpacing: 0.84,
  );
  static const TextStyle reupCartSummary = TextStyle(
    color: Colors.black,
    fontSize: 14,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
    letterSpacing: 0.98,
  );
  static const TextStyle reupProfileText = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w400,
    letterSpacing: 1.12,
  );

  static const TextStyle reupHintText = TextStyle(
    color: Color.fromARGB(255, 79, 79, 79),
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w300,
    letterSpacing: 1.12,
  );
  static const TextStyle reupOrderLabel = TextStyle(
    color: Colors.black,
    fontSize: 12,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    letterSpacing: 0.84,
  );
  static TextStyle reupAdText = GoogleFonts.delaGothicOne(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.56,
  );
  static const TextStyle reupUnderlined = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w300,
    letterSpacing: 1.12,
    decoration: TextDecoration.underline,
  );
  static const TextStyle reupPinCode = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    letterSpacing: 0.98,
  );
  static const TextStyle reupbp1Ad = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    letterSpacing: 1.4,
  );
}

// класс для описания стиля текста в кнопках
class CustomButtonTextStyle {
  //жирный текст кнопок
  static const TextStyle buttonBoldStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w500,
    letterSpacing: 1.12,
  );

//кнопки категорий товаров
  static const TextStyle buttonItemStyle = TextStyle(
    fontFamily: 'Gilroy',
    color: Colors.black,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.12,
    overflow: TextOverflow.ellipsis,
  );

  static const TextStyle buttonItemStyleWhite = TextStyle(
    fontFamily: 'Gilroy',
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w700,
    letterSpacing: 1.12,
    overflow: TextOverflow.ellipsis,
  );

//обычный текст для кнопок
  static const TextStyle basicStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w300,
    letterSpacing: 1.12,
  );

  static const TextStyle chipWhite = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    letterSpacing: 1.12,
  );
  static const TextStyle chipBlack = TextStyle(
    color: Colors.black,
    fontSize: 16,
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w700,
    letterSpacing: 1.12,
  );
}
