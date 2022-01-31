import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        minimum: const EdgeInsets.all(10.0),
        child: Scaffold(
          backgroundColor: Colors.grey.shade400,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset(
                    'assets/batman.png',
                    height: 200.0,
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                _textEmail(),
                const SizedBox(
                  height: 15.0,
                ),
                _textPassword(),
                const SizedBox(
                  height: 15.0,
                ),
                _buttonSummit(),
              ],
            ),
          ),
        ));
  }
}

Widget _textEmail() {
  return StreamBuilder<dynamic>(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'joanreyes1926@gmail.com',
          labelText: 'Correo electrónico',
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _textPassword() {
  return StreamBuilder<dynamic>(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        decoration: const InputDecoration(
          icon: Icon(Icons.lock),
          //hintText: '************',
          labelText: "Contraseña",
        ),
        onChanged: (value) {},
      ),
    );
  });
}

Widget _buttonSummit() {
  return StreamBuilder<dynamic>(
      builder: (BuildContext context, AsyncSnapshot snapshot) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
          elevation: MaterialStateProperty.all<double>(20.0),
          shape:
              MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: const Text(
          'Iniciar Seción',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  });
}
