import 'package:emancy_app/pages/contas_main.dart';
import 'package:emancy_app/pages/dashboard/dashboard_main.dart';
import 'package:emancy_app/pages/more_main.dart';
import 'package:emancy_app/pages/planejamento_main.dart';
import 'package:emancy_app/pages/relatorio/relatorio_main.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      width: 210,
      backgroundColor: Color.fromARGB(255, 48, 48, 48),
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
            style: ButtonStyle(
              padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              overlayColor: WidgetStateProperty.all<Color>(
                const Color.fromARGB(255, 56, 56, 56),
              ),
            ),

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
            style: ButtonStyle(
              padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              overlayColor: WidgetStateProperty.all<Color>(
                const Color.fromARGB(255, 56, 56, 56),
              ),
            ),
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
            style: ButtonStyle(
              padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              overlayColor: WidgetStateProperty.all<Color>(
                const Color.fromARGB(255, 56, 56, 56),
              ),
            ),
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
            style: ButtonStyle(
              padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              overlayColor: WidgetStateProperty.all<Color>(
                const Color.fromARGB(255, 56, 56, 56),
              ),
            ),
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
          TextButton(
            style: ButtonStyle(
              padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              overlayColor: WidgetStateProperty.all<Color>(
                const Color.fromARGB(255, 56, 56, 56),
              ),
            ),
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
              title: Text('Mais', style: TextStyle(color: Colors.white)),
            ),
          ),
          Expanded(child: SizedBox()),
          TextButton(
            style: ButtonStyle(
              padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.zero),
              overlayColor: WidgetStateProperty.all<Color>(
                const Color.fromARGB(255, 56, 56, 56),
              ),
            ),
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
  }
}
