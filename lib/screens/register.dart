import 'package:crypto/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  final Controller c = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 60, left: 25),
                        child: IconButton(
                            icon: const Icon(
                              Ionicons.arrow_back_outline,
                            ),
                            iconSize: 30,
                            color: Colors.black,
                            onPressed: () {}),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 60, right: 25),
                          child: TextButton(
                              style:
                                  TextButton.styleFrom(primary: Colors.white),
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                  backgroundColor: Colors.amberAccent,
                                ),
                              ),
                              onPressed: () {})),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 50),

                  Row(
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),

                  inputEmail("Please enter email"),

                  const SizedBox(
                    height: 38,
                  ),

                  Row(children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ]),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 9, left: 25, right: 25),
                      child: Obx(
                        () => Column(
                          children: [
                            TextField(
                              showCursor: true,
                              obscureText:
                                  c.passBool.value == "true" ? true : false,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: Icon(c.passBool.value == "true"
                                        ? Ionicons.eye_off_outline
                                        : Ionicons.eye_outline),
                                    onPressed: () {
                                      c.pass();
                                    },
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  hintText: "Please enter password"),
                            )
                          ],
                        ),
                      )),

                  const SizedBox(
                    height: 15,
                  ),
                  // CheckboxListTile(
                  //     shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(100)),
                  //     title: const Text("I agree to the terms & conditions"),
                  //     value: true,
                  //     activeColor: Colors.grey[700],
                  //     controlAffinity: ListTileControlAffinity.leading,
                  //     onChanged: (newValue) {
                  //       print("hi");
                  //     }),

                  Padding(
                      padding:
                          const EdgeInsets.only(top: 60, left: 25, right: 25),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                              height: 60,
                              width: double.infinity,
                              child: TextButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                      foregroundColor:
                                          MaterialStateProperty.all(
                                              Colors.black),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.amberAccent)),
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: "Roboto"),
                                  ),
                                  onPressed: () {}))
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
  }

  Widget inputEmail(String text) {
    return Container(
      padding: const EdgeInsets.only(top: 9, left: 25, right: 25),
      child: Column(
        children: <Widget>[
          TextField(
            onChanged: (content) {
              c.inputEmail(content);
            },
            decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                hintText: text),
          ),
        ],
      ),
    );
  }
}
