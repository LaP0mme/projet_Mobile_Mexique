import 'package:flutter/material.dart';
import 'package:proyecto_mobil/constentes.dart' as con;

import 'appBar.dart';

class Home extends StatefulWidget {
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List titleProducts = [];

  List products = [];

  @override
  void initState() {
    titleProducts.add('Todos');
    titleProducts.add('Combos');
    titleProducts.add('Hamburguesas');
    titleProducts.add('Bebidas');
    titleProducts.add('Postres');

    products.add('id#nombre#imagen.png#calificacion#favoritos#categoria');
    super.initState();
  }

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
        Column(
          children: [

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
        SizedBox(
          height: 50,
          width: size.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const ScrollPhysics(),
              itemCount: titleProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return Text(
                  titleProducts[index],
                  style: TextStyle(
                    color: con.white,
                    fontSize: 18,
                  ),
                );
              }),
        ),
        listHomeProduct(size: size),
        ]),
      ]),
    );
  }
}

class listHomeProduct extends StatelessWidget {
  const listHomeProduct({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: con.secundario,
          borderRadius: BorderRadius.circular(20),
        ),
        child: SizedBox(
          height: size.height * 0.65,
          width: size.width,
          child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: products.length / 2,
              itemBuilder: (BuildContext context, int index) {
                var datos = products[index].split('#');
                return Row(
                  children: [
                    Expanded(
                        flex: 6,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: con.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                '../images/Welcome_2.png',
                                width: size.width * 0.15,
                              ),
                              Text(
                                'Hamburgesa',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                'Nuevo estillo',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.heart_broken_outlined,
                                    size: 14,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                    SizedBox(
                      width: 15,
                    ),
                    datos[index+1].isNotEmpty ?
                    Expanded(
                        flex: 6,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: con.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                '../images/Welcome_2.png',
                                width: size.width * 0.15,
                              ),
                              Text(
                                'Hamburgesa',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                'Nuevo estillo',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 15),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellowAccent,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.heart_broken_outlined,
                                    size: 14,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  ],
                );
              }),
        ));
  }
}
