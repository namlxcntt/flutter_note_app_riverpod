import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class LogUtils {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(
        methodCount: 2,
        // Number of method calls to be displayed
        errorMethodCount: 8,
        // Number of method calls if stacktrace is provided
        lineLength: 120,
        // Width of the output
        colors: true,
        // Colorful log messages
        printEmojis: true,
        // Print an emoji for each log message
        printTime: false // Should each log print contain a timestamp
        ),
  );

  LogUtils._privateConstructor();

  static final LogUtils instance = LogUtils._privateConstructor();

  void d(String message) {
    if (kDebugMode) {
      _logger.d(message, time: DateTime.now());
    }
  }

  void i(String message) {
    if (kDebugMode) {
      _logger.i(message, time: DateTime.now());
    }
  }

  void w(String message) {
    if (kDebugMode) {
      _logger.w(message, time: DateTime.now());
    }
  }

  void e(String message, {StackTrace? stackTrace}) {
    if (kDebugMode) {
      _logger.e(message, time: DateTime.now(), stackTrace: stackTrace);
    }
  }

  void wtf(String message) {
    if (kDebugMode) {
      _logger.f(message);
    }
  }
}
