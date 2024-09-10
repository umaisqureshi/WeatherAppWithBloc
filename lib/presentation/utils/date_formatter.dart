import 'package:intl/intl.dart';

class DateFormatter {
  String formatDate(String inputDate) {
    final dateTime = DateTime.parse(inputDate);
    final formatter = DateFormat('EEEE, dd yyyy');
    return formatter.format(dateTime);
  }

  String formatDateTimeForApi(DateTime dateTime) {
    final formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(dateTime);
  }
}
