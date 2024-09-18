import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  Widget getText(String text) {
    return Container(
        padding: EdgeInsets.only(
            left: 20,
            top: MediaQuery.of(context).size.height * .015,
            bottom: MediaQuery.of(context).size.height * .015),
        width: MediaQuery.of(context).size.width * .9,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.white),
        child: TextField(
          decoration: InputDecoration(
              hintText: text,
              hintStyle: const TextStyle(color: Colors.grey),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none),
        ));
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 55, 74, 177),
      body: Center(
        child: Flex(
          direction: Axis.vertical,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Dating App",
              style: TextStyle(
                  color: Colors.orangeAccent,
                  fontSize: w * .08,
                  fontWeight: FontWeight.w500),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.only(top: h * .1),
              width: w,
              height: h * .7,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.grey[600]),
              child: Column(
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: w * .08, color: Colors.white),
                  ),
                  SizedBox(
                    height: h * .1,
                  ),
                  getText("Enter email or username"),
                  SizedBox(
                    height: h * .04,
                  ),
                  getText("Enter password"),
                  SizedBox(
                    height: h * .02,
                  ),
                  SizedBox(
                    width: w,
                    child: Center(
                        child: Text("Forgot Pasword?",
                            style: TextStyle(
                                fontSize: w * .04,
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)))),
                  ),
                  SizedBox(
                    height: h * .02,
                  ),
                  Container(
                    width: w * .6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 55, 74, 177)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text("Sign In",
                            style: TextStyle(
                                fontSize: w * .05, color: Colors.white))),
                  ),
                  SizedBox(
                    height: h * .01,
                  ),
                  SizedBox(
                    width: w,
                    child: Center(
                        child: Text("Dont have an account? Register",
                            style: TextStyle(
                                fontSize: w * .04,
                                color: Colors.orangeAccent))),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
