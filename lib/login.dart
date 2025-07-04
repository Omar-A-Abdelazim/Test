import 'package:ecommercey/Signup.dart';
import 'package:flutter/material.dart';
import 'package:ecommercey/Home.dart';

void loginPage() {
  runApp(MaterialApp(home: Login()));
}

class Login extends StatelessWidget {
  GlobalKey<FormState> FormKey = GlobalKey();
  Login({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Background
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black,
          ),

          // Login Text
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 112, left: 26),
                  width: 500,
                  height: 285,
                  color: Color.fromRGBO(249, 168, 38, 1),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontFamily: "Quicksand",
                    ),
                  ),
                ),
              ),
            ],
          ),
          // top right circle
          Positioned(
            top: -71,
            left: 184,
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 177, 51, 1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          // small circle
          Positioned(
            top: 208,
            left: -4,
            child: Container(
              width: 17,
              height: 17,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 177, 51, 1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          // bottom circle
          Positioned(
            top: 225,
            left: 28,
            child: Container(
              width: 47,
              height: 47,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 177, 51, 1),
                shape: BoxShape.circle,
              ),
            ),
          ),
          // White Container
          Positioned(
            top: 259,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(top: 44, left: 28, right: 28),
              height: screenHeight - 259,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              // Text Field
              child: Form(
                key: FormKey,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Email
                      Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          fontFamily: "Quicksand",
                        ),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your email";
                          }
                        },

                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),

                          hintText: "Enter your email",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            fontFamily: "Quicksand",
                          ),
                        ),
                      ),
                      // Password
                      Container(
                        margin: EdgeInsets.only(top: 36),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                            fontFamily: "Quicksand",
                          ),
                        ),
                      ),
                      Password(),
                      // Remember and Reset
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Check(),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                overlayColor: WidgetStateProperty.all(
                                  Colors.transparent,
                                ),
                              ),
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  color: const Color.fromRGBO(112, 112, 112, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Quicksand",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Login Button
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 60,
                              margin: EdgeInsets.only(
                                top: 30,
                                right: 30,
                                left: 30,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(249, 168, 38, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: MaterialButton(
                                onPressed: () {
                                  FormKey.currentState!.save();
                                  if (FormKey.currentState!.validate()) {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Home(),
                                      ),
                                    );
                                  }
                                },
                                child: Text(
                                  "Continue",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Register
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 25,
                                top: 20,
                                right: 2,
                              ),
                              child: Text(
                                "Don't have account yet? Register",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Quicksand",
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20, right: 10),
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Signup(),
                                    ),
                                  );
                                },
                                style: ButtonStyle(
                                  overlayColor: WidgetStateProperty.all(
                                    Colors.transparent,
                                  ),
                                  padding: WidgetStateProperty.all(
                                    EdgeInsets.zero,
                                  ),
                                  minimumSize: WidgetStateProperty.all(
                                    Size(0, 0),
                                  ),
                                  tapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                ),
                                child: Text(
                                  "here",
                                  style: TextStyle(
                                    color: const Color.fromARGB(
                                      255,
                                      247,
                                      119,
                                      14,
                                    ),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Quicksand",
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Or
                      Container(
                        margin: EdgeInsets.only(top: 35),
                        child: Center(
                          child: Text(
                            "Or login with",
                            style: TextStyle(
                              color: Color.fromARGB(255, 161, 161, 161),
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      // Google, Face, Twi
                      Container(
                        margin: EdgeInsets.only(top: 29),
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(192, 192, 192, 0.2),
                                      spreadRadius: 4,
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.only(right: 21),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/gmail.png",
                                    width: 19,
                                    height: 19,
                                  ),
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(192, 192, 192, 0.2),
                                      spreadRadius: 4,
                                      blurRadius: 20,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Image.asset(
                                    "assets/facebook.png",
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Space
                      SizedBox(height: 45),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

class _CheckState extends State<Check> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10, top: 2),
            child: IconButton(
              constraints: BoxConstraints(),
              padding: EdgeInsets.all(0),
              onPressed: () {
                setState(() {
                  check = !check;
                });
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,

              icon: check
                  ? Icon(
                      Icons.check_box,
                      color: Color.fromRGBO(112, 112, 112, 1),
                    )
                  : Icon(
                      Icons.check_box_outline_blank,
                      color: const Color.fromRGBO(112, 112, 112, 1),
                    ),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                check = !check;
              });
            },
            style: ButtonStyle(
              overlayColor: WidgetStateProperty.all(Colors.transparent),
              padding: WidgetStateProperty.all(EdgeInsets.zero),
              minimumSize: WidgetStateProperty.all(Size(0, 0)),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),

            child: Text(
              "Stay logged in?",
              style: TextStyle(
                color: Color.fromRGBO(112, 112, 112, 1),
                fontSize: 15,
                fontWeight: FontWeight.w600,
                fontFamily: "Quicksand",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool eye = false;
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return "please enter your password";
        }
      },
      obscureText: obscure,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: "Enter your password",
        hintStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 15,
          fontFamily: "Quicksand",
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              obscure = !obscure;
              eye = !eye;
            });
          },
          icon: eye
              ? Icon(Icons.visibility, color: Color.fromRGBO(173, 173, 173, 1))
              : Icon(
                  Icons.visibility_off,
                  color: Color.fromRGBO(173, 173, 173, 1),
                ),
        ),
      ),
    );
  }
}
