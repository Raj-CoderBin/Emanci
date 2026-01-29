import 'package:emancy_app/pages/dashboard/dashboard_desktop.dart';
import 'package:emancy_app/pages/dashboard/dashboard_mobile.dart';
import 'package:emancy_app/pages/dashboard/dashboard_tablet.dart';
import 'package:emancy_app/responsive/responsive_layout.dart';
import 'package:flutter/material.dart';

class DashboardMain extends StatefulWidget {
  const DashboardMain({super.key});

  @override
  State<DashboardMain> createState() => _DashboardMainState();
}

class _DashboardMainState extends State<DashboardMain> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileScaffold: DashboardMobile(),
      tabletScaffold: DashboardTablet(),
      desktopScaffold: DashboardDesktop(),
    );
  }
}
