import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                      iconSize: 30,
                      color: Colors.black,
                      onPressed: () {}),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 60),
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
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "REGISTER",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 62),
            child: Row(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          Padding(
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
          Padding(
            padding: const EdgeInsets.only(top: 38),
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
            height: 250,
          ),
          Padding(
              padding: const EdgeInsets.only(top: 9, left: 25, right: 25),
              child: Column(
                children: [
                  SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: TextButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.amberAccent)),
                          child: const Text(
                            "Creat Account",
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
    );
  }
}
