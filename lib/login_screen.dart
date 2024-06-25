import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController regNumberC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  bool showPassword = true;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              "asset/images/KASULogo.png",
              scale: 2,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "KASU SOFTBUD",
              style: TextStyle(
                color: Colors.green,
                fontFamily: "Tahoma",
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 146, 203, 147),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Column(
                children: [
                  TextField(
                      controller: regNumberC,
                      decoration: const InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Registration Number",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ))),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: passwordC,
                    obscureText: showPassword,
                    decoration: InputDecoration(
                      filled: true,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        icon: Icon( showPassword ? Icons.visibility : Icons.visibility_off ),
                      ),
                      fillColor: Colors.white,
                      hintText: "Password",
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: login,
                    child: const Text("Login"),
                  )
                ],
              ),
            ),
            TextButton(
              onPressed: gotoForgetPasswordScreen,
              child: const Text("Forgot Password?"),
            ),
          ],
        ),
      ),
    );
  }

  void gotoForgetPasswordScreen() {
    //TODO: NAVIGATE TO FORGOT PASSWORD SCREEN(use Navigation.push)
  }

  void login() {
    String regNumber = regNumberC.text.trim();
    String password = passwordC.text.toString();

    debugPrint("Your registration number is:  $regNumber");
    debugPrint("Your passwordr is:  $password");
  }
}
