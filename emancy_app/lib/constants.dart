import 'package:flutter/material.dart';

class Constants extends StatelessWidget {
  const Constants({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

//Títulos e Textos

var myGastosTitle = Padding(
  padding: const EdgeInsets.all(0.0),
  child: Align(
    alignment: Alignment.centerLeft,
    child: Text('Gastos', style: TextStyle(fontSize: 20, color: Colors.white)),
  ),
);

var myDashboardtitle = Padding(
  padding: const EdgeInsets.all(8.0),
  child: Align(
    alignment: Alignment.centerLeft,
    child: Text(
      'Dashboard',
      style: TextStyle(fontSize: 20, color: Colors.white),
    ),
  ),
);

//Layout

var myBoxDecoration = BoxDecoration(
  color: const Color.fromARGB(255, 50, 50, 50),
  borderRadius: BorderRadius.circular(20),
);

var myDefaultBackground = const Color.fromARGB(255, 30, 30, 30);

var myAppBarDesktop = AppBar(
  backgroundColor: const Color.fromARGB(255, 75, 144, 144),
  leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back, size: 27)),
  actions: [
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.notifications, color: Colors.white),
    ),
    IconButton(
      icon: Icon(Icons.settings, color: Colors.grey[900]),
      onPressed: () {},
    ),
  ],
  toolbarHeight: 45,
);

var myAppBar = AppBar(
  foregroundColor: Colors.white,
  backgroundColor: const Color.fromARGB(255, 30, 30, 30),
  elevation: 0,
  scrolledUnderElevation: 0,
  surfaceTintColor: Colors.transparent,
  leading: IconButton(
    onPressed: () {},
    icon: Icon(Icons.account_circle, color: Colors.white, size: 27),
  ),
  actions: [
    IconButton(
      onPressed: () {},
      icon: Icon(Icons.notifications, color: Colors.white),
    ),
    IconButton(
      icon: Icon(Icons.settings, color: Colors.white),
      onPressed: () {},
    ),
  ],
  toolbarHeight: 45,
);

var sadoAtual = Expanded(
  child: Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 54, 54, 54),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Saldo Atual',
              style: TextStyle(color: Colors.grey[400]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'R\$600,00',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Icon(
                Icons.savings_outlined,
                color: const Color.fromARGB(255, 206, 198, 128),
                size: 30,
              ),
            ],
          ),
        ],
      ),
    ),
  ),
);

var cartaoDeCredito = Expanded(
  child: Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 54, 54, 54),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Cartão de Crédito',
              style: TextStyle(color: Colors.grey[400]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'R\$0,00',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Icon(Icons.credit_card, color: Colors.blue[200], size: 30),
            ],
          ),
        ],
      ),
    ),
  ),
);

var receita = Expanded(
  child: Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 54, 54, 54),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Receitas', style: TextStyle(color: Colors.grey[400])),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'R\$0,00',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Icon(Icons.arrow_upward, color: Colors.green[200], size: 30),
            ],
          ),
        ],
      ),
    ),
  ),
);

var despesas = Expanded(
  child: Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 54, 54, 54),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text('Despesas', style: TextStyle(color: Colors.grey[400])),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'R\$0,00',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Icon(Icons.arrow_downward, color: Colors.pink[100], size: 30),
            ],
          ),
        ],
      ),
    ),
  ),
);

var myTransition = (context, animation, secondaryAnimation, child) {
  return FadeTransition(opacity: animation, child: child);
};
