import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: null,
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset("images/loginUi/background.png"),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.24,
                  left: MediaQuery.of(context).size.width * 0.36,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.white),
                  ),
                ),
                Positioned(
                    left: MediaQuery.of(context).size.width * 0.05,
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.23,
                        child: Image.asset("images/loginUi/light-1.png"))),
                Positioned(
                    left: MediaQuery.of(context).size.width * 0.38,
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.18,
                        child: Image.asset("images/loginUi/light-2.png"))),
                Positioned(
                  left: MediaQuery.of(context).size.width * 0.75,
                  top: MediaQuery.of(context).size.height * 0.08,
                  child: Image.asset("images/loginUi/clock.png"),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromRGBO(143, 148, 251, .2),
                        blurRadius: 20.0,
                        offset: Offset(0, 10))
                  ]),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(color: Colors.grey[100]!))),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "Email or Phone number",
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey[400])),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    padding: const EdgeInsets.all(8),
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: "password",
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.grey[400])),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      colors: [
                        Color.fromRGBO(143, 148, 251, 1),
                        Color.fromRGBO(143, 148, 251, .6),
                      ]
                  )
              ),
              height: 52,
              child: const Center(
                  child: Text(
                "Login",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              )),
            )
          ],
        ),
      ),
    );
  }
}
