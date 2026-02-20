import 'package:emancy_app/constants.dart';
import 'package:emancy_app/util/my_app_bar_dasktop.dart';
import 'package:emancy_app/util/my_drawer.dart';
import 'package:flutter/material.dart';

class DashboardDesktop extends StatefulWidget {
  const DashboardDesktop({super.key});

  @override
  State<DashboardDesktop> createState() => _DashboardDesktopState();
}

class _DashboardDesktopState extends State<DashboardDesktop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],

      body: Row(
        children: [
          //Menu lateral
          MyDrawer(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  MyAppBarDasktop(),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      SizedBox(width: 12),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Dashboard',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      sadoAtual,
                      SizedBox(width: 20),
                      cartaoDeCredito,
                      SizedBox(width: 20),
                      receita,
                      SizedBox(width: 20),
                      despesas,
                    ],
                  ),
                  SizedBox(height: 27),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Gastos',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 8),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: 170,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          'Gastos previstos',
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: 170,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[800],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Text(
                                          'Gastos previstos',
                                          style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
