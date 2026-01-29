import 'package:emancy_app/constants.dart';
import 'package:emancy_app/pages/contas_main.dart';
import 'package:emancy_app/pages/dashboard/dashboard_main.dart';
import 'package:emancy_app/pages/more_main.dart';
import 'package:emancy_app/pages/planejamento_main.dart';
import 'package:emancy_app/pages/relatorio/relatorio_mobile.dart';
import 'package:emancy_app/responsive/responsive_layout.dart';
import 'package:emancy_app/util/my_app_bar_dasktop.dart';
import 'package:emancy_app/util/my_drawer.dart';
import 'package:flutter/material.dart';

class RelatorioMain extends StatelessWidget {
  const RelatorioMain({super.key});

  @override
  Widget build(BuildContext context) {
    var myDrawer = Drawer(
      width: 210,
      backgroundColor: Colors.grey[850],
      child: Column(
        children: [
          SizedBox(height: 50),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.account_circle,
              size: 40,
              color: Colors.grey[700],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'User Name',
              style: TextStyle(color: Colors.grey[400], fontSize: 12),
            ),
          ),
          SizedBox(
            width: 180,
            height: 15,
            child: Divider(color: Colors.grey[800]),
          ),
          TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
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
            child: ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text('Dashboard', style: TextStyle(color: Colors.white)),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      MoreMain(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            child: ListTile(
              leading: Icon(Icons.flag, color: Colors.white),
              title: Text('Metas', style: TextStyle(color: Colors.white)),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
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
            child: ListTile(
              leading: Icon(Icons.timeline, color: Colors.white),
              title: Text(
                'Planejamento',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      RelatorioMain(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            child: ListTile(
              leading: Icon(Icons.article, color: Colors.white),
              title: Text('Relatório', style: TextStyle(color: Colors.white)),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            onPressed: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      ContasMain(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
            child: ListTile(
              leading: Icon(Icons.account_balance, color: Colors.white),
              title: Text('Contas', style: TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(child: SizedBox()),
          TextButton(
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            onPressed: () {},
            child: ListTile(
              leading: Icon(Icons.info, color: Colors.white),
              title: Text('Sobre', style: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
    return ResponsiveLayout(
      mobileScaffold: RelatorioMobile(),
      tabletScaffold: Scaffold(
        backgroundColor: myDefaultBackground,
        appBar: myAppBar,
        drawer: myDrawer,
      ),
      desktopScaffold: Scaffold(
        backgroundColor: Colors.grey[900],

        body: Row(
          children: [
            MyDrawer(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    MyAppBarDasktop(),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Relatório',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
