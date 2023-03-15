import 'package:flutter/material.dart';
import 'package:wqsm/features/home_screen/report_views/reports.dart';

import '../features/home_screen/live_data/live_data.dart';
import '../features/home_screen/reservoir/reservoir.dart';
import '../features/profile/edit_profile.dart';

class Routes {
  static final List<Widget> routes = [
    const LiveData(),
    const Reports(),
    const Reservoir(),
    const EditProfile(),
  ];
}
