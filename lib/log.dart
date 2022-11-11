import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var h, s, w;
  @override
  Widget build(BuildContext context) {
    s = MediaQuery.of(context).size;
    h = s.height;
    w = s.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 80 * h / 924,
          ),
          Center(
              child: Text(
            "Login",
            style: GoogleFonts.poppins(
                fontSize: 23,
                color: Color(0xff262628),
                fontWeight: FontWeight.w600),
          )),
          SizedBox(
            height: 18* h / 924,
          ),
          Text(
            "Welcome back, Plz  Sign in and continue your journey with us",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Color(0xff262628),
            ),
          ),
          SizedBox(
            height: 35* h / 924,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: GoogleFonts.poppins(
                        fontSize: 23,
                        color: Color(0xff262628),
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 11* h / 924,
                  ),
                  Container(
                    height: 1* h / 924,
                    width: 58,
                    color: Color(0xff000000),
                  )
                ],
              ),
              SizedBox(
                width: 22,
              ),
              Column(
                children: [
                  Text(
                    "Register",
                    style: GoogleFonts.poppins(
                        fontSize: 23,
                        color: Color(0xffA6A6A6),
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 11* h / 924,
                  ),
                  Container(
                    height: 1* h / 924,
                    width: 58,
                    color: Color(0xffffffff),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 38* h / 924,
          ),
          Container(
              width: 388,
              height: 48* h / 924,
              child: TextFormField(
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                validator: (valve) {
                  var val = valve;
                  RegExp regex =
                      new RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]");
                  if (val!.isEmpty) {
                    return ("Email Required");
                  }
                  //reg expression for email validation
                  if (!regex.hasMatch(val)) {
                    return ("Please Enter a valid email");
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail_outlined),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              )),
          SizedBox(
            height: 32* h / 924,
          ),
          Container(
              width: 388,
              height: 48* h / 924,
              child: TextFormField(
                obscureText: true,
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline),
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              )),
          SizedBox(
            height: 15* h / 924,
          ),
          Row(
            children: [
              SizedBox(
                width: 239,
              ),
              Text("Forgot Password?",
                  style: GoogleFonts.poppins(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff262628))),
            ],
          ),
          SizedBox(
            height: 37* h / 924,
          ),
          Container(
            height: 50* h / 924,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xff274560),
            ),
            width: 387,
            child: Center(
                child: Text("Login",
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFFFFFF)))),
          ),
          SizedBox(
            height: 43* h / 924,
          ),
          Text("Or Connect With",
              style: GoogleFonts.poppins(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff262628))),
          SizedBox(height: 25* h / 924,)
        ]),
      ),
    );
  }
}
