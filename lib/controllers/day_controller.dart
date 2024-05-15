import 'package:intl/intl.dart';
import 'package:taskmate_app/services/service_locator.dart';

import '../models/day.dart';
import '../models/user.dart';
import '../services/day_service.dart';

class DayController {

  DayService dayService = ServiceLocator.dayService;

  Future<Day> loadDayTasks(User usuario, DateTime date) async {
    var res = await dayService.loadDayTasks(usuario, DateFormat('yyyy-MM-dd').format(date));
    print(res.todayTasks);
    return res;
  }

}

