import 'package:crypto/controller/controllerlogin.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  final ControllerLogin c = Get.put(ControllerLogin());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: const Color(0xFF1C2021),
            body: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Container(
                color: const Color(0xFF1C2021),
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 85),
                    labelTxt(text: "Welcome Back", txtSize: 36),
                    const SizedBox(height: 90),
                    labelTxt(text: "Email", txtSize: 18),
                    Container(
                        padding:
                            const EdgeInsets.only(top: 17, left: 30, right: 30),
                        width: double.infinity,
                        child: TextFormField(
                          cursorColor: Colors.greenAccent,
                          style: const TextStyle(color: Colors.white),
                          decoration: const InputDecoration(
                            fillColor: Color(0xFF000000),
                            filled: true,
                            hintText: 'eg@example.com',
                            hintStyle: TextStyle(
                                fontSize: 14, color: Color(0xFFA9A9A9)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            border:
                                OutlineInputBorder(borderSide: BorderSide()),
                          ),
                          onChanged: (content) {
                            c.emailVoid(content);
                          },
                        )),
                    const SizedBox(height: 35),
                    labelTxt(text: "Password", txtSize: 18),
                    Container(
                        padding:
                            const EdgeInsets.only(top: 17, left: 30, right: 30),
                        width: double.infinity,
                        child: Obx(
                          () => TextFormField(
                              obscureText:
                                  c.passIcon.value == "true" ? true : false,
                              cursorColor: Colors.greenAccent,
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                  icon: Icon(c.passIcon.value == "true"
                                      ? Ionicons.eye_off_outline
                                      : Ionicons.eye_outline),
                                  color: Colors.white,
                                  onPressed: () {
                                    c.passIconVoid();
                                  },
                                ),
                                fillColor: const Color(0xFF000000),
                                filled: true,
                                hintText: 'Enter Password',
                                hintStyle: const TextStyle(
                                    fontSize: 14, color: Color(0xFFA9A9A9)),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide()),
                              ),
                              onChanged: (content) {
                                c.passTxtVoid(content);
                              }),
                        )),
                    GestureDetector(
                      child: txtBTN(text: "Forgot Password?", txtSize: 29),
                      onTap: () {
                        print("Forgot Password?");
                      },
                    ),
                    GestureDetector(
                      child: txtBTN(text: "Register now", txtSize: 26),
                      onTap: () {
                        print("Register");
                      },
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 130, left: 30, right: 30),
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xFF00FFD1))),
                            child: const Text("Login",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            onPressed: () {
                              print("Login BTN");
                            }),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }

  Widget labelTxt({required text, required double txtSize}) {
    return Container(
      padding: const EdgeInsets.only(left: 30),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: txtSize,
            color: Colors.white),
      ),
    );
  }

  Widget txtBTN({required text, required double txtSize}) {
    return Container(
      padding: EdgeInsets.only(top: txtSize, left: 30),
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            color: Color(0xFFA9A9A9)),
      ),
    );
  }
}
