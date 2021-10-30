import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Row(
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
                          child: const Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                          onPressed: () {})),
                ],
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              color: Colors.white,
              child: Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      "REGISTER",
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 62, left: 25),
                    child: Text(
                      "Email",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 9, left: 25, right: 25),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintText: "Please enter email"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 38,
            ),
            Container(
              color: Colors.white,
              child: Row(children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 9, left: 25, right: 25),
              child: Column(
                children: [
                  TextField(
                    showCursor: true,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: const Icon(Ionicons.eye_off_outline),
                          onPressed: () {},
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)),
                        hintText: "Please enter password"),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CheckboxListTile(
                title: const Text("I agree to the terms & conditions"),
                value: true,
                activeColor: Colors.grey[700],
                controlAffinity: ListTileControlAffinity.leading,
                onChanged: (newValue) {
                  print("hi");
                }),
            const SizedBox(
              height: 200,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Column(
                  children: [
                    SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                foregroundColor:
                                    MaterialStateProperty.all(Colors.black),
                                backgroundColor: MaterialStateProperty.all(
                                    Colors.amberAccent)),
                            child: const Text(
                              "Create Account",
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
    );
  }
}
