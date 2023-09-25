import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        body: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 8,
                      child: Image.network(
                        "https://hermes.digitalinnovation.one/assets/diome/logo.png",
                      ),
                    ),
                    Expanded(child: Container())
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Já tem cadastro?",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Faça seu login e make the change.",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 0),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: Color.fromARGB(255, 110, 46, 194),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 110, 46, 194),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 110, 46, 194),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: const TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 0),
                      hintText: "Senha",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: Color.fromARGB(255, 110, 46, 194),
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Color.fromARGB(255, 110, 46, 194),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 110, 46, 194),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 110, 46, 194),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 110, 46, 194)),
                      ),
                      child: const Text(
                        "ENTRAR",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                        color: Colors.yellow, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text(
                    "Criar conta",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
