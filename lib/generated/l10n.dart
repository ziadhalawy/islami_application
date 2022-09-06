// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `islami`
  String get app_title {
    return Intl.message(
      'islami',
      name: 'app_title',
      desc: '',
      args: [],
    );
  }

  /// `Radio`
  String get radio_icon {
    return Intl.message(
      'Radio',
      name: 'radio_icon',
      desc: '',
      args: [],
    );
  }

  /// `Sibha`
  String get sibha_icon {
    return Intl.message(
      'Sibha',
      name: 'sibha_icon',
      desc: '',
      args: [],
    );
  }

  /// `Hadith`
  String get hadith_icon {
    return Intl.message(
      'Hadith',
      name: 'hadith_icon',
      desc: '',
      args: [],
    );
  }

  /// `Quran`
  String get quran_icon {
    return Intl.message(
      'Quran',
      name: 'quran_icon',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language_label {
    return Intl.message(
      'Language',
      name: 'language_label',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme_label {
    return Intl.message(
      'Theme',
      name: 'theme_label',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings_icon {
    return Intl.message(
      'Settings',
      name: 'settings_icon',
      desc: '',
      args: [],
    );
  }

  /// `Azkar`
  String get azkar_icon {
    return Intl.message(
      'Azkar',
      name: 'azkar_icon',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english_lang {
    return Intl.message(
      'English',
      name: 'english_lang',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic_lang {
    return Intl.message(
      'Arabic',
      name: 'arabic_lang',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light_theme {
    return Intl.message(
      'Light',
      name: 'light_theme',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get dark_theme {
    return Intl.message(
      'Dark',
      name: 'dark_theme',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
