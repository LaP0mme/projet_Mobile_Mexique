import 'package:flutter/material.dart';
import 'package:proyecto_mobil/constentes.dart' as cons;
import 'package:proyecto_mobil/home.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                  image: AssetImage('../images/Welcome1.png'),
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
              '../images/Welcome2.png',
              width: size.width * 0.25,
            ),
          ),
          //Login Menu without pixel overflow
          Padding(
            padding: EdgeInsets.only(
              top: size.height * 0.25,
              left: size.width * 0.05,
              right: size.width * 0.05,
            ),
            child: Column(
              children: [
                Container(
                  height: size.height * 0.75,
                  padding: EdgeInsets.only(
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
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: size.height * 0.15,
                            width: size.width * 0.15,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage('../images/Foto_Login.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'Bienvenido al Registro',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: cons.secundario,
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Nombre Completo',
                            //only the bottom border
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Correo/Usuario',
                            //only the bottom border
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Dirección de envio',
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: 'Contraseña',
                            //only the bottom border
                            border: OutlineInputBorder(),
                          ),
                          obscureText: true,
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: cons.primario,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            fixedSize:
                                Size(size.width * 0.6, size.height * 0.05),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          child: const Text(
                            'Registrarse',
                            style: TextStyle(color: cons.white, fontSize: 16),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Politicas de privacidad',
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
