import 'package:exam_app/service/model/global/test_data/test_data.dart';
import 'package:flutter/material.dart';
import 'fonts.dart';

/// ================================ DEFAULT ====================================

List<String> exampleImages = List.generate(5, (index) => 'https://picsum.photos/30$index');

List<String> exampleItems = List.generate(5, (index) => 'Item-$index');

Map<int, Color> colorCodes = {
  50: Colors.transparent,
  100: Colors.white10,
  200: Colors.white12,
  300: Colors.white24,
  400: Colors.white30,
  500: Colors.white38,
  600: Colors.white54,
  700: Colors.white60,
  800: Colors.white70,
  900: Colors.white,
};

List<String> keyboardNumbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "", "0", "⌫"];

/// ================================ App Values ================================

String appTextFamily = AppFonts.montserrat;

List<QuestionData> questions = [
  QuestionData(
    question: "Agar mijoz sotib olgan sovutgichda biron mumammo chiqsa....",
    correctVariant: "Mijozni uyiga servis markazi xizmat ko’rsatish uchun keladi, xizmat bepul faqat zavod tomonidan nosozlik chiqsa.",
    variants: [
      Variant(variant: "A", response: "Mijoz servis markaziga olib boradi, servis bepul."),
      Variant(variant: "B", response: "Servis markazi mijozni uyiga keladi, servis xizmati pullik bo’ladi."),
      Variant(
          variant: "C",
          response:
              "Mijozni uyiga servis markazi xizmat ko’rsatish uchun keladi, xizmat bepul faqat zavod tomonidan nosozlik chiqsa."),
      Variant(variant: "D", response: "Barcha javoblar noto’g’ri"),
    ],
  ),
  QuestionData(
    question: "4+5=?",
    correctVariant: "9",
    variants: [
      Variant(variant: "A", response: "9"),
      Variant(variant: "B", response: "11"),
      Variant(variant: "C", response: "4"),
      Variant(variant: "D", response: "10"),
    ],
  ),
  QuestionData(
    question: "4+5*2=?",
    correctVariant: "14",
    variants: [
      Variant(variant: "A", response: "18"),
      Variant(variant: "B", response: "14"),
      Variant(variant: "C", response: "16"),
    ],
  ),
  QuestionData(
    question: "4*5-2/2=?",
    correctVariant: "19",
    variants: [
      Variant(variant: "A", response: "19"),
      Variant(variant: "B", response: "6"),
      Variant(variant: "C", response: "9"),
    ],
  ),
];

/// ================================ Localization ==================================

List<Locale> l10n = const [Locale("uz", "UZ"), Locale("ru", "RU"), Locale("en", "EN")];
