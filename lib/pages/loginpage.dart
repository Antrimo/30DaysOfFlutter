import 'package:flutter/material.dart';
import 'package:app/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/login_image.png",
                fit: BoxFit.scaleDown,
              ),
              const SizedBox(height: 20),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                  onChanged: (value) => {
                        name = value,
                        setState(() {}),
                      }),
              const SizedBox(height: 15),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              const SizedBox(height: 20),

              InkWell(
                onTap: () async => {
                  setState(() {
                    changeButton = true;
                  }),
                  await Future.delayed(const Duration(seconds: 1)),
                  Navigator.pushNamed(context, Routes.homeRoute),
                },
                child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    height: 40,
                    width: changeButton ? 40 : 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple,
                    ),
                    child: changeButton
                        ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : const Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          )),
              )

              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.pushNamed(context, Routes.homeRoute);
              //   },
              //   style: ElevatedButton.styleFrom(
              //     minimumSize: const Size(150, 40),
              //   ),
              //   child: const Text("Login"),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
