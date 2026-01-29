import 'package:emancy_app/constants.dart';
import 'package:emancy_app/util/my_action_button.dart';
import 'package:emancy_app/util/my_nav_bar_mobile.dart';
import 'package:flutter/material.dart';

class DashboardMobile extends StatefulWidget {
  const DashboardMobile({super.key});

  @override
  State<DashboardMobile> createState() => _DashboardMobileState();
}

class _DashboardMobileState extends State<DashboardMobile> {
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
      bottomNavigationBar: MyNavBarMobile(selectedIndex: 0),
      floatingActionButton: MyActionButton(),
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    //Dashboard
                    Row(children: [myDashboardtitle]),
                    Row(
                      children: [
                        sadoAtual,
                        SizedBox(width: 20),
                        cartaoDeCredito,
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(children: [receita, SizedBox(width: 20), despesas]),
              ),
              SizedBox(height: 20),
              // Gastos
              Row(children: [SizedBox(width: 20), myGastosTitle]),

              myBox(
                height: 175,
                widget: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 5),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                            255,
                                            137,
                                            96,
                                            33,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 7),
                                              Icon(
                                                Icons.store,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              SizedBox(width: 7),
                                              Text(
                                                'Mercado',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(width: 7),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 5),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                            255,
                                            39,
                                            79,
                                            112,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 7),
                                              Icon(
                                                Icons.credit_card,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              SizedBox(width: 7),
                                              Text(
                                                'Fatura',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(width: 7),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 5),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                            255,
                                            120,
                                            111,
                                            38,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 7),
                                              Icon(
                                                Icons.bolt,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              SizedBox(width: 7),
                                              Text(
                                                'Luz',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(width: 7),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      SizedBox(width: 5),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                            255,
                                            43,
                                            89,
                                            105,
                                          ),
                                          borderRadius: BorderRadius.circular(
                                            20,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Row(
                                            children: [
                                              SizedBox(width: 7),
                                              Icon(
                                                Icons.water_drop,
                                                color: Colors.white,
                                                size: 15,
                                              ),
                                              SizedBox(width: 7),
                                              Text(
                                                'Água',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              SizedBox(width: 7),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'em 3 dias',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'em 10 dias',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'em 1 dia',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'em 7 dias',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'RS 23,90',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'RS 67,60',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'RS 215,80',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'RS 70,00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              myBox(
                height: 170,
                widget: Column(
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

              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(width: 8),

                  //Item RECORRENTES
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Recorrentes',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),

              // GASTOS RECENTES
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: SizedBox(
                        width: 130,
                        height: 50,
                        child: Container(
                          decoration: myBoxDecoration,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Gastos',
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
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: SizedBox(
                        width: 130,
                        height: 50,
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
                                      'Gastos ',
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
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: SizedBox(
                        width: 130,
                        height: 50,
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
                                      'Gastos ',
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
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: SizedBox(
                        width: 130,
                        height: 50,
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
                                      'Gastos ',
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
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: SizedBox(
                        width: 130,
                        height: 50,
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
                                      'Gastos ',
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
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: SizedBox(
                        width: 130,
                        height: 50,
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
                                      'Gastos ',
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
                  ],
                ),
              ),
              SizedBox(height: 8),

              //Dois quadrados:
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 130,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 130,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 70,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),

              Row(
                children: [
                  myBox(height: 170, widget: Row(children: [Text('data')])),
                  myBox(height: 170, widget: Column(children: [Text('data')])),
                ],
              ),
              myBox(height: 170, widget: Row(children: [])),
            ],
          ),
        ),
      ),
    );
  }
}
