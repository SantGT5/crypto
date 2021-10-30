import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 27, right: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                      iconSize: 30,
                      color: Colors.black,
                      onPressed: () {}),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextButton(
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Roboto',
                              fontSize: 25),
                        ),
                        onPressed: () {})),
              ],
            ),
          )
        ],
      ),
    );
  }
}
