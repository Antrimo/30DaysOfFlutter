import 'package:flutter/material.dart';
import 'package:app/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changeButton = false;

  moveToHome(BuildContext context) async {
    setState(() {
      changeButton = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    await Navigator.pushNamed(context, Routes.homeRoute);
    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/hey.png",
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
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return "Username cannot be empty";
                    //   }
                    //   return null;
                    // },
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
                  // validator: (value) => value!.isEmpty
                  //     ? "Password cannot be empty"
                  //     : value.length < 6
                  //         ? "Password length should be atleast 6"
                  //         : null,
                ),
                const SizedBox(height: 20),

                Material(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changeButton ? 40 : 8),
                  child: InkWell(
                    onTap: () async => moveToHome(context),
                    child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        height: 40,
                        width: changeButton ? 40 : 140,
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
                  ),
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
      ),
    );
  }
}
