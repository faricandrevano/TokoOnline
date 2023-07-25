import 'package:intl/intl.dart';

extension IndonesianDateFormatter on DateTime {
  String get fullDate => DateFormat('EEEE, d MMMM y', 'id_ID').format(this);
  String get formatMonth => DateFormat('MMMM', 'id_ID').format(this);
  String get formatMonthYear => DateFormat('MMMM y', 'id_ID').format(this);
  String get time => DateFormat('HH:mm', 'id_ID').format(this);
  String get fullDateTime =>
      DateFormat('EEEE, d MMMM y HH:mm', 'id_ID').format(this);
}
