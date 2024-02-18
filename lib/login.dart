import 'package:flutter/material.dart';
import 'package:proyecto_mobil/constentes.dart' as cons;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: size.height * 0.45),
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('../images/Welcome_1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // set the backgroud color to brown
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.55),
            child: Container(
              color: cons.darkBrown,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              '../images/Welcome_2.png',
              width: size.width * 0.4,
            ),
          ),
          //Login Menu without pixel overflow
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.30,
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.65,
                  padding: EdgeInsets.only(
                    top: size.height * 0.05,
                    left: size.width * 0.05,
                    right: size.width * 0.05,
                  ),
                  decoration: BoxDecoration(
                    color: cons.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text(
                          'Bienvenido a Burger Classic',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: cons.secundario,
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Correo/Usuario',
                            //only the bottom border
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 30),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Contraseña',
                            border: OutlineInputBorder(
                            ),
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: cons.primario,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            fixedSize:
                                Size(size.width * 0.8, size.height * 0.10),
                          ),
                          onPressed: () {},
                          child: const Text('Iniciar Sesión',
                              style: TextStyle(color: cons.white,
                              fontSize: 20),

                        ),
                        ),
                        const SizedBox(height: 30),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Olvidaste tu contraseña?',
                            style: TextStyle(color: cons.secundario),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
