// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TextLocalizations {
  final Locale locale;
  TextLocalizations(
    this.locale,
  );

  static TextLocalizations of(BuildContext context) {
    return Localizations.of<TextLocalizations>(context, TextLocalizations)!;
  }

  static const _localizedValues = <String, Map<String, String>>{
    'en': {
      "summary":
          "Mobile app developer with flutter both android and IOS with 1-year experience, creating user-friendly and interactive applications.",
      "skill": "Skills",
      "third_string":
          " I can work with the company or with a team to build various applications to aid humans' problem "
    },
    'bg': {
      "summary":
          " Разработчик на мобилни приложения с flutter както Android, така и IOS с 1-годишен опит, създавайки удобни за потребителя и интерактивни приложения",
      "skill": " Умения",
      "third_string":
          "Мога да работя с компанията или с екип, за да изградя различни приложения за подпомагане на проблема с хората"
    },
    'cs': {
      "summary":
          " Vývojář mobilních aplikací s flutterem Android i IOS s 1-letou zkušeností, vytváření uživatelsky přívětivých a interaktivních aplikací",
      "skill": "Dovednosti ",
      "third_string":
          "Mohu pracovat s firmou nebo s týmem na vytváření různých aplikací, které pomohou lidem problém"
    },
    'de': {
      "summary":
          " Mobile App-Entwickler mit Flatter sowohl Android als auch IOS mit 1-jähriger Erfahrung, die benutzerfreundliche und interaktive Anwendungen erstellen",
      "skill": "Fähigkeiten ",
      "third_string":
          "Ich kann mit dem Unternehmen oder mit einem Team zusammenarbeiten, um verschiedene Anwendungen zu erstellen, um Menschen zu helfen"
    },
    'es': {
      "summary":
          " Desarrollador de aplicaciones móviles con Flutter tanto Android como IOS con 1 año de experiencia, creando aplicaciones interactivas y fáciles de usar",
      "skill": " Habilidades",
      "third_string":
          "Puedo trabajar con la empresa o con un equipo para construir varias aplicaciones para ayudar a los humanos problema"
    },
    'fr': {
      "summary":
          " Développeur d’applications mobiles avec flutter à la fois Android et IOS avec 1 an d’expérience, créant des applications conviviales et interactives",
      "skill": " Compétences ",
      "third_string":
          "Je peux travailler avec l’entreprise ou avec une équipe pour construire diverses applications pour aider les problèmes humains"
    },
    'he': {
      "summary":
          "Vývojář mobilních aplikací s flutterem Android i IOS s 1-letou zkušeností, vytváření uživatelsky přívětivých a interaktivních aplikací ",
      "skill": " Dovednosti ",
      "third_string":
          "Mohu pracovat s firmou nebo s týmem na vytváření různých aplikací, které pomohou lidem problém"
    },
    'hi': {
      "summary":
          " 1 साल के अनुभव के साथ एंड्रॉइड और आईओएस दोनों फड़फड़ाहट के साथ मोबाइल ऐप डेवलपर, उपयोगकर्ता के अनुकूल और इंटरैक्टिव एप्लिकेशन बनाते हैं",
      "skill": " कौशल",
      "third_string":
          "मैं कंपनी के साथ या एक टीम के साथ काम कर सकता हूं ताकि मनुष्यों की समस्या की सहायता के लिए विभिन्न अनुप्रयोगों का निर्माण किया जा सके"
    },
    'ja': {
      "summary":
          " 1年の経験を持つAndroidとIOSの両方をフラッターし、ユーザーフレンドリーでインタラクティブなアプリケーションを作成するモバイルアプリ開発者",
      "skill": "スキル ",
      "third_string": "私は会社やチームと協力して、人間の問題を支援するためのさまざまなアプリケーションを構築できます"
    },
    'lv': {
      "summary":
          "Mobilo lietotņu izstrādātājs ar flutter gan Android, gan IOS ar 1 gada pieredzi, izveidojot lietotājam draudzīgas un interaktīvas lietojumprogrammas ",
      "skill": " Prasmes",
      "third_string":
          "Es varu strādāt ar uzņēmumu vai komandu, lai izveidotu dažādas lietojumprogrammas, lai palīdzētu cilvēkiem problēmas"
    },
    'pl': {
      "summary":
          "Programista aplikacji mobilnych z trzepotaniem zarówno Androidem, jak i IOS z 1-letnim doświadczeniem, tworząc przyjazne dla użytkownika i interaktywne aplikacje",
      "skill": " Umiejętności",
      "third_string":
          " Mogę współpracować z firmą lub zespołem, aby zbudować różne aplikacje pomagające ludziom w problemach"
    },
    'sk': {
      "summary":
          " Vývojár mobilných aplikácií s flutterom pre Android aj IOS s 1-ročnými skúsenosťami, ktorý vytvára užívateľsky prívetivé a interaktívne aplikácie",
      "skill": "Zručnosti ",
      "third_string":
          "Môžem spolupracovať so spoločnosťou alebo s tímom na vytváraní rôznych aplikácií na pomoc ľuďom pri problémoch"
    }
  };
  static List<String> languages() => _localizedValues.keys.toList();

  String get summary {
    return _localizedValues[locale.languageCode]!['summary']!;
  }

  String get skill {
    return _localizedValues[locale.languageCode]!['skill']!;
  }

  // ignore: non_constant_identifier_names
  String get third_string {
    return _localizedValues[locale.languageCode]!['third_string']!;
  }
}
