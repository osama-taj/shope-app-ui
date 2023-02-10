import 'package:flutter/material.dart';
import 'package:myshopeapp/Auth/LoginPage.dart';

import '../CustomWidget.dart';
import '../funcation/validate.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});

  @override
  Widget build(BuildContext context) {
    // texteditingcontrolle------------------------------------------------
    TextEditingController emailC = TextEditingController();
    TextEditingController paswordC = TextEditingController();
    TextEditingController nameC = TextEditingController();

    GlobalKey<FormState> formloginkey = GlobalKey<FormState>();

    var Msize, Mheight, Mwidth;
    Msize = MediaQuery.of(context).size;
    Mheight = Msize.height;
    Mwidth = Msize.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          body: Container(
            child: Stack(
              children: [
                Container(
                  width: Mwidth,
                  height: Mheight,
                  color: Colors.red,
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.only(top: (Mheight * 0.20) * 0.25),
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: Colors.white,
                        ),
                      ),
                      Text("Sign Up",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30)),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 30),
                    width: Mwidth,
                    height: Mheight * 0.80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(50))),
                    child: SingleChildScrollView(
                      reverse: false,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Form(
                              key: formloginkey,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  mycustomTextFormField(
                                      "Name", false, Icons.person, emailC,
                                      (value) {
                                    return validInput(value!, 5, 100, "email");
                                  }),
                                  mycustomTextFormField("Email", false,
                                      Icons.email_rounded, emailC, (value) {
                                    return validInput(value!, 5, 100, "email");
                                  }),
                                  mycustomTextFormField(
                                      "Password",
                                      true,
                                      Icons.password_rounded,
                                      paswordC, (value) {
                                    return validInput(
                                        value!, 5, 20, "password");
                                  }),
                                  mycustomTextFormField(
                                      "Confirm Password",
                                      false,
                                      Icons.password_rounded,
                                      emailC, (value) {
                                    return validInput(value!, 5, 100, "email");
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
                                          "Sign Up",
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.red)),
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
                                Text("Already have an account "),
                                InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage())),
                                  child: Text(
                                    "Sign In ",
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
      ),
    );
  }
}
