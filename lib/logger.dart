import 'package:logger/logger.dart';

class AppLogger {
  final logger = Logger();

  void i(String msg) {
    logger.i(msg);
  }
}

final logger = AppLogger();
