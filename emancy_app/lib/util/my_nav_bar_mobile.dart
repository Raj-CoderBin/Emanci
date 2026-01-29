import 'package:emancy_app/pages/dashboard/dashboard_main.dart';
import 'package:emancy_app/pages/more_main.dart';
import 'package:emancy_app/pages/planejamento_main.dart';
import 'package:emancy_app/pages/relatorio/relatorio_main.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyNavBarMobile extends StatefulWidget {
  final int selectedIndex;
  const MyNavBarMobile({super.key, required this.selectedIndex});

  @override
  State<MyNavBarMobile> createState() => _MyNavBarMobileState();
}

class _MyNavBarMobileState extends State<MyNavBarMobile> {
  void _onTabChanged(int index) {
    if (index == widget.selectedIndex) return;
    Widget page;
    switch (index) {
      case 0:
        page = const DashboardMain();

      case 1:
        page = const RelatorioMain();
      case 2:
        page = PlanejamentoMain();
      case 3:
        page = MoreMain();

        break;
      default:
        return;
    }
    Navigator.pushReplacement(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => page,
        transitionDuration: Duration.zero,
        reverseTransitionDuration: Duration.zero,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 30, 30, 30),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: GNav(
          gap: 8,
          selectedIndex: widget.selectedIndex,

          backgroundColor: const Color.fromARGB(255, 30, 30, 30),
          color: Colors.white,
          activeColor: Color.fromARGB(255, 70, 187, 191),
          tabBackgroundColor: const Color.fromARGB(255, 56, 56, 56),
          onTabChange: _onTabChanged,
          padding: EdgeInsetsGeometry.all(16),
          tabs: const [
            GButton(icon: Icons.home, text: 'Home'),
            GButton(icon: Icons.article, text: 'Relatório'),
            GButton(icon: Icons.timeline, text: 'Planos'),
            GButton(icon: Icons.more_horiz, text: 'Mais'),
          ],
        ),
      ),
    );
  }
}
