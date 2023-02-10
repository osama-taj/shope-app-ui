import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myshopeapp/Auth/SignUp.dart';

import '../CustomWidget.dart';
import '../funcation/validate.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // texteditingcontrolle------------------------------------------------
    TextEditingController emailC = TextEditingController();
    TextEditingController paswordC = TextEditingController();

    GlobalKey<FormState> formloginkey = GlobalKey<FormState>();

    var Msize, Mheight, Mwidth;
    Msize = MediaQuery.of(context).size;
    Mheight = Msize.height;
    Mwidth = Msize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: Stack(
            children: [
              Container(
                width: Mwidth,
                height: Mheight,
                color: Colors.red,
                alignment: Alignment.topCenter,
                child: TweenAnimationBuilder(
                    duration: Duration(milliseconds: 5000),
                    tween: Tween<double>(begin: 0, end: 1),
                    builder:
                        (BuildContext context, double _opacity, Widget? child) {
                      return Opacity(
                          opacity: _opacity,
                          child: Padding(
                              padding: EdgeInsets.only(top: _opacity * 20),
                              child: child));
                    },
                    curve: Curves.bounceInOut,
                    child: Image.asset("images/shoelogo.png")),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: Mwidth,
                  height: Mheight * 0.60,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50))),
                  child: SingleChildScrollView(
                    reverse: false,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 16, bottom: 20),
                          child: Text("Login",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30)),
                        ),
                        Form(
                            key: formloginkey,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                mycustomTextFormField(
                                    "Username", false, Icons.person, emailC,
                                    (value) {
                                  return validInput(value!, 5, 100, "email");
                                }),
                                mycustomTextFormField("Password", true,
                                    Icons.password_rounded, paswordC, (value) {
                                  return validInput(value!, 5, 20, "password");
                                }),
                                Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  padding: EdgeInsets.all(16),
                                  width: double.infinity,
                                  height: 80,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        print("login");
                                        var formdata =
                                            formloginkey.currentState;
                                        if (formdata!.validate()) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(SnackBar(
                                            content: Text('Yay! A SnackBar!'),
                                          ));
                                        }
                                      },
                                      child: Text(
                                        "Login",
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all<Color>(
                                                  Colors.red)),
                                    ),
                                  ),
                                )
                              ],
                            )),
                        Container(
                          margin: EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("don't have an account "),
                              InkWell(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SingUp())),
                                child: Text(
                                  "Sign Up ",
                                  style: TextStyle(color: Colors.red),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
