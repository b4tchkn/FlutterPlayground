import 'package:logger/logger.dart';

final logger = Logger(
  printer: PrettyPrinter(),
);

extension LoggerExt on Logger {
  void es(Object e, StackTrace s) => logger.e('$e, $s');
}
