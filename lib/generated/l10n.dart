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

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Title here`
  String get create_note_text_title_here {
    return Intl.message(
      'Title here',
      name: 'create_note_text_title_here',
      desc: '',
      args: [],
    );
  }

  /// `Write yours notes here`
  String get create_note_description_here {
    return Intl.message(
      'Write yours notes here',
      name: 'create_note_description_here',
      desc: '',
      args: [],
    );
  }

  /// `Change Background`
  String get change_background {
    return Intl.message(
      'Change Background',
      name: 'change_background',
      desc: '',
      args: [],
    );
  }

  /// `Extras`
  String get extras {
    return Intl.message(
      'Extras',
      name: 'extras',
      desc: '',
      args: [],
    );
  }

  /// `Pinned Notes`
  String get pinned_notes {
    return Intl.message(
      'Pinned Notes',
      name: 'pinned_notes',
      desc: '',
      args: [],
    );
  }

  /// `View all`
  String get view_all {
    return Intl.message(
      'View all',
      name: 'view_all',
      desc: '',
      args: [],
    );
  }

  /// `Interesting Idea`
  String get interesting_ideal {
    return Intl.message(
      'Interesting Idea',
      name: 'interesting_ideal',
      desc: '',
      args: [],
    );
  }

  /// `Every big step start with small step.\nNotes your first idea and start\nyour journey!`
  String get starting_text {
    return Intl.message(
      'Every big step start with small step.\nNotes your first idea and start\nyour journey!',
      name: 'starting_text',
      desc: '',
      args: [],
    );
  }

  /// `Start Your Journey`
  String get start_journey {
    return Intl.message(
      'Start Your Journey',
      name: 'start_journey',
      desc: '',
      args: [],
    );
  }

  /// `Ops Sorry the problem`
  String get ops_problem {
    return Intl.message(
      'Ops Sorry the problem',
      name: 'ops_problem',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Note found pinned notes`
  String get note_found_pinned {
    return Intl.message(
      'Note found pinned notes',
      name: 'note_found_pinned',
      desc: '',
      args: [],
    );
  }

  /// `No interesting ideal notes`
  String get note_found_interesting {
    return Intl.message(
      'No interesting ideal notes',
      name: 'note_found_interesting',
      desc: '',
      args: [],
    );
  }

  /// `Last edited on`
  String get last_edited {
    return Intl.message(
      'Last edited on',
      name: 'last_edited',
      desc: '',
      args: [],
    );
  }

  /// `Set Reminder`
  String get set_reminder {
    return Intl.message(
      'Set Reminder',
      name: 'set_reminder',
      desc: '',
      args: [],
    );
  }

  /// `Change Note Type`
  String get change_note_type {
    return Intl.message(
      'Change Note Type',
      name: 'change_note_type',
      desc: '',
      args: [],
    );
  }

  /// `Give Label`
  String get give_label {
    return Intl.message(
      'Give Label',
      name: 'give_label',
      desc: '',
      args: [],
    );
  }

  /// `Mark as Finished`
  String get mark_as_finished {
    return Intl.message(
      'Mark as Finished',
      name: 'mark_as_finished',
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
