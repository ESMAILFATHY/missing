import 'package:flutter/material.dart';
import 'package:missing/screens/signin_page.dart';
import 'package:missing/screens/welcome_screen.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color(
          0XFF102B51,
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 20, right: 60),
              width: 400,
              height: 500,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/water_mark.png',
                      ))),
            ),
          ),
          Container(
            decoration:
            BoxDecoration(color: const Color(0XFF8DB9F7).withOpacity(0.91)),
          ),
          Container(
            width: 360,
            height: 185,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/curve.png',
                    ))),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) {
                            return const SignIn();
                          }));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 27,
                    )),
              ),
              const Text(
                'Back',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 80, top: 5),
            child: Image(image: AssetImage('assets/creat account.png')),
          ),
          Center(
            child: Column(
              children: [
                 const Padding(
                  padding: EdgeInsets.only(
                    top: 200,
                  ),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 32,
                        color: Color(0XFF080FB4)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color(0XFFD9D9D9),
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: const Color(0XFF080FB4)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0XFF000000).withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset:
                          const Offset(4, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Name",
                            hintStyle: TextStyle(
                                color: Color(0XFF080FB4),
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color(0XFFD9D9D9),
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: const Color(0XFF080FB4)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0XFF000000).withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset:
                          const Offset(4, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email ",
                            hintStyle: TextStyle(
                                color: Color(0XFF080FB4),
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Container(
                    height: 55,
                    width: 300,
                    decoration: BoxDecoration(
                      color: const Color(0XFFD9D9D9),
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      border: Border.all(color: const Color(0XFF080FB4)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0XFF000000).withOpacity(0.25),
                          spreadRadius: 0,
                          blurRadius: 7,
                          offset:
                          const Offset(4, 10), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Color(0XFF080FB4),
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 50),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                        child: Transform.scale(
                          scale: 0.7,
                          child: Checkbox(
                            checkColor: Colors.white,
                            side: const BorderSide(color: Colors.white),
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "agree with Terms & conditions.",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: GestureDetector(
                    onTap:  (){
                     Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const WelcomeScreen();
                      }));
                     },
                    child: Container(
                      height: 55,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color(0XFF080FB4),
                        borderRadius: const BorderRadius.all(Radius.circular(40)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0XFF000000).withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset:
                            const Offset(4, 10), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(
                          child: Text(
                            'Sign Up ',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w600,
                              color: Color(0XFFFFFFFF),
                            ),
                          )),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 115, top: 30),
                  child: Row(
                    children: [
                      Text(
                        "-----",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "or sign up via",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          "-----",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 135, top: 20),
                  child: Row(
                    children: [
                      GestureDetector(child: Image.asset('assets/facebook.png')),
                      Padding(
                        padding: const EdgeInsets.only(left: 70),
                        child: GestureDetector(
                            child: Image.asset('assets/twiter.png')),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )

        ],

      ),
    );
  }
}
