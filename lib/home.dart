import 'package:flutter/material.dart';
import 'package:proyecto_mobil/constentes.dart' as con;

import 'appBar.dart';

class Home extends StatefulWidget {
  List titleProducts = [];

  @override
  void initState() {
    titleProducts.add('Todos');
    titleProducts.add('Combos');
    titleProducts.add('Hamburguesas');
    titleProducts.add('Bebidas');
    titleProducts.add('Postres');
  }
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: con.fondo,
      appBar: AppBar(
        backgroundColor: con.fondo,
        title: Center(
          child: Image.asset(
            '../images/Welcome_2.png',
            width: size.width * 0.1,
          ),
        ),
        iconTheme: IconThemeData(color: con.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.local_grocery_store),
          ),
        ],
      ),
      drawer: drawerWidget(),
      body: Stack(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Que hay de cenar ?',
              style: TextStyle(
                color: con.secundario,
                fontSize: 24,
                letterSpacing: 1.5,
              ),
            )
          ],
        ),
        Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: con.primario,
            borderRadius: BorderRadius.circular(20),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Container(
                        height: size.height * 0.2,
                        decoration: BoxDecoration(
                          color: con.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset('../images/Welcome_2.png',
                                width: size.width * 0.15),
                            Text(
                              'Hamburguesa',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Nuevo Estilo',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 14,
                                ),
                                Icon(
                                  Icons.heart_broken_outlined,
                                  size: 14,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 6,
                      child: ContainerWidget(size: size),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.2,
      decoration: BoxDecoration(
        color: con.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('../images/Welcome_2.png',
              width: size.width * 0.15),
          Text(
            'Hamburguesa',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            'Nuevo Estilo',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.star,
                color: Colors.yellow,
                size: 14,
              ),
              Icon(
                Icons.heart_broken_outlined,
                size: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
