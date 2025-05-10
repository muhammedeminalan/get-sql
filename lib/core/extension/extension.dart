import 'package:flutter/material.dart';

// Tüm UI sabitleri için tek bir extension
extension UIConstantsExtension on BuildContext {
  // Colors
  Color get black => Colors.black;
  Color get white => Colors.white;
  Color get red => Colors.red;
  Color get green => Colors.green;
  Color get blue => Colors.blue;
  Color get yellow => Colors.yellow;
  Color get orange => Colors.orange;
  Color get purple => Colors.purple;
  Color get gray => Colors.grey;
  Color get lightGray => const Color(0xFFEEEEEE);
  Color get darkGray => const Color(0xFF424242);
  Color get pink => Colors.pink;
  Color get cyan => Colors.cyan;
  Color get brown => Colors.brown;
  Color get lightBlue => const Color(0xFF81D4FA);
  Color get darkBlue => const Color(0xFF1565C0);
  Color get lightGreen => const Color(0xFFA5D6A7);
  Color get darkGreen => const Color(0xFF2E7D32);
  Color get navyBlue => const Color(0xFF0D47A1);
  Color get pearlWhite => const Color(0xFFF8F8FF);
  Color get smokeGray => const Color(0xFFB0BEC5);
  Color get teal => Colors.teal;
  Color get amber => Colors.amber;
  Color get indigo => Colors.indigo;
  Color get lime => Colors.lime;
  Color get deepPurple => Colors.deepPurple;
  Color get lightPurple => const Color(0xFFCE93D8); // Açık mor
  Color get coral => const Color(0xFFFF7F50); // Mercan
  Color get charcoal => const Color(0xFF36454F); // Kömür grisi
  Color get rose => const Color(0xFFFF007F); // Gül kırmızısı
  Color get olive => const Color(0xFF808000); // Zeytin yeşili

  // Bosluk: Yükseklik (dikey boşluk)
  SizedBox get h4 => const SizedBox(height: 4);
  SizedBox get h8 => const SizedBox(height: 8);
  SizedBox get h12 => const SizedBox(height: 12);
  SizedBox get h16 => const SizedBox(height: 16);
  SizedBox get h20 => const SizedBox(height: 20);
  SizedBox get h24 => const SizedBox(height: 24);
  SizedBox get h32 => const SizedBox(height: 32);
  SizedBox get h40 => const SizedBox(height: 40);
  SizedBox get h48 => const SizedBox(height: 48);
  SizedBox get h64 => const SizedBox(height: 64);
  SizedBox get h80 => const SizedBox(height: 80);

  // Bosluk: Genişlik (yatay boşluk)
  SizedBox get w4 => const SizedBox(width: 4);
  SizedBox get w8 => const SizedBox(width: 8);
  SizedBox get w12 => const SizedBox(width: 12);
  SizedBox get w16 => const SizedBox(width: 16);
  SizedBox get w20 => const SizedBox(width: 20);
  SizedBox get w24 => const SizedBox(width: 24);
  SizedBox get w32 => const SizedBox(width: 32);
  SizedBox get w40 => const SizedBox(width: 40);
  SizedBox get w48 => const SizedBox(width: 48);
  SizedBox get w64 => const SizedBox(width: 64);
  SizedBox get w80 => const SizedBox(width: 80);

  // Hizalama (MainAxisAlignment)
  MainAxisAlignment get start => MainAxisAlignment.start;
  MainAxisAlignment get center => MainAxisAlignment.center;
  MainAxisAlignment get end => MainAxisAlignment.end;
  MainAxisAlignment get spaceEvenly => MainAxisAlignment.spaceEvenly;
  MainAxisAlignment get spaceBetween => MainAxisAlignment.spaceBetween;
  MainAxisAlignment get spaceAround => MainAxisAlignment.spaceAround;

  // YaziBoyutu
  double get fscokKucuk => 10;
  double get fskucuk => 12;
  double get fsorta => 14;
  double get fsnormal => 16;
  double get fscokBuyuk => 18;
  double get fsbaslik => 20;
  double get fsbuyukBaslik => 24;
  double get fsdevBaslik => 32;

  // YaziKalinlik (FontWeight)
  FontWeight get fwfwenInce => FontWeight.w100;
  FontWeight get fwcokInce => FontWeight.w200;
  FontWeight get fwince => FontWeight.w300;
  FontWeight get fwnormalKalinlik => FontWeight.w400; // Çakışmayı önlemek için 'normal' yerine 'normalKalinlik'
  FontWeight get fwortaKalin => FontWeight.w500;
  FontWeight get fwkalin => FontWeight.w600;
  FontWeight get fwcokKalin => FontWeight.w700;
  FontWeight get fwdahaKalin => FontWeight.w800;
  FontWeight get fwenKalin => FontWeight.w900;

  // KenarBosluklar (Padding)
  EdgeInsets get p4 => const EdgeInsets.all(4);
  EdgeInsets get p8 => const EdgeInsets.all(8);
  EdgeInsets get p12 => const EdgeInsets.all(12);
  EdgeInsets get p16 => const EdgeInsets.all(16);
  EdgeInsets get p20 => const EdgeInsets.all(20);
  EdgeInsets get p24 => const EdgeInsets.all(24);
  EdgeInsets get p32 => const EdgeInsets.all(32);

  // Yalnızca dikey (üst + alt)
  EdgeInsets get pv4 => const EdgeInsets.symmetric(vertical: 4);
  EdgeInsets get pv8 => const EdgeInsets.symmetric(vertical: 8);
  EdgeInsets get pv16 => const EdgeInsets.symmetric(vertical: 16);

  // Yalnızca yatay (sol + sağ)
  EdgeInsets get ph4 => const EdgeInsets.symmetric(horizontal: 4);
  EdgeInsets get ph8 => const EdgeInsets.symmetric(horizontal: 8);
  EdgeInsets get ph16 => const EdgeInsets.symmetric(horizontal: 16);

  // Sadece belirli kenarlar
  EdgeInsets get top16 => const EdgeInsets.only(top: 16);
  EdgeInsets get bottom16 => const EdgeInsets.only(bottom: 16);
  EdgeInsets get left16 => const EdgeInsets.only(left: 16);
  EdgeInsets get right16 => const EdgeInsets.only(right: 16);

  EdgeInsets get top8 => const EdgeInsets.only(top: 8);
  EdgeInsets get bottom8 => const EdgeInsets.only(bottom: 8);
  EdgeInsets get left8 => const EdgeInsets.only(left: 8);
  EdgeInsets get right8 => const EdgeInsets.only(right: 8);
}