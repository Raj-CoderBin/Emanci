import 'package:emancy_app/constants.dart';
import 'package:emancy_app/pages/dashboard/dashboard_main.dart';
import 'package:emancy_app/pages/planejamento_main.dart';
import 'package:flutter/material.dart';

class DashboardTablet extends StatefulWidget {
  const DashboardTablet({super.key});

  @override
  State<DashboardTablet> createState() => _DashboardTabletState();
}

class _DashboardTabletState extends State<DashboardTablet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,

      body: Row(
        children: [
          SizedBox(
            width: 50,
            child: Column(
              children: [
                SizedBox(height: 95),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            DashboardMain(),
                        transitionDuration: Duration.zero,
                        reverseTransitionDuration: Duration.zero,
                      ),
                    );
                  },
                  icon: Icon(Icons.home, size: 18, color: Colors.grey[200]),
                ),
                SizedBox(height: 8),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.flag, color: Colors.grey[200], size: 18),
                ),
                SizedBox(height: 8),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            PlanejamentoMain(),
                        transitionDuration: Duration.zero,
                        reverseTransitionDuration: Duration.zero,
                      ),
                    );
                  },
                  icon: Icon(Icons.timeline, color: Colors.grey[200], size: 18),
                ),
                SizedBox(height: 8),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.article, color: Colors.grey[200], size: 18),
                ),
                SizedBox(height: 8),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_balance,
                    color: Colors.grey[200],
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
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
                      sadoAtual,
                      SizedBox(width: 15),
                      cartaoDeCredito,
                      SizedBox(width: 15),
                      receita,
                      SizedBox(width: 15),
                      despesas,
                    ],
                  ),
                  SizedBox(height: 15),
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
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                      SizedBox(width: 7),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
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
                                          'Gráfico',
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
