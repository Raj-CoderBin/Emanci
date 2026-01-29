import 'package:emancy_app/constants.dart';
import 'package:emancy_app/util/my_action_button.dart';
import 'package:emancy_app/util/my_nav_bar_mobile.dart';
import 'package:flutter/material.dart';

class RelatorioMobile extends StatefulWidget {
  const RelatorioMobile({super.key});

  @override
  State<RelatorioMobile> createState() => _RelatorioMobileState();
}

class _RelatorioMobileState extends State<RelatorioMobile> {
  Expanded myBox({required double height, required Widget widget}) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 50, 50, 50),
              borderRadius: BorderRadius.circular(20),
            ),
            child: widget,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: myAppBar,

      bottomNavigationBar: MyNavBarMobile(selectedIndex: 1),
      floatingActionButton: MyActionButton(),
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Relatório',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                myBox(
                  height: 170,
                  widget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [Text('data')]),
                  ),
                ),
                Row(
                  children: [
                    myBox(
                      height: 170,
                      widget: Padding(padding: const EdgeInsetsGeometry.all(8)),
                    ),
                    myBox(
                      height: 170,
                      widget: Padding(padding: const EdgeInsetsGeometry.all(8)),
                    ),
                  ],
                ),
                myBox(
                  height: 170,
                  widget: Padding(
                    padding: const EdgeInsetsGeometry.all(8),
                    child: Row(children: [Text('data')]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
