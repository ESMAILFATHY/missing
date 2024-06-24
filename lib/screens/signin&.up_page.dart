import 'package:flutter/material.dart';
import 'package:missing/screens/signin_page.dart';
import 'package:missing/screens/signup.dart';
import 'package:missing/screens/welcome_screen.dart';

class SignINUpPage extends StatelessWidget {
  const SignINUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      backgroundColor: const Color(0XFF102B51,),
    elevation: 0,
    automaticallyImplyLeading: false,
    ),
      body:  Stack(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 20,right: 60),
              width: 400,
              height: 500,

              decoration:  const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/water_mark.png',)
                  )

              ),
            ),
          ),
          Container(
            decoration:  BoxDecoration(
                color: const Color(0XFF8DB9F7).withOpacity(0.91)
            ),
          ),
          Container(
            width:360 ,
            height: 185,
            decoration:  const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/curve.png',)
                )

            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: IconButton(onPressed: (){Navigator.pop(context, MaterialPageRoute(builder: (context){
                  return const WelcomeScreen();
                }));},
                    icon: const Icon(Icons.arrow_back,color: Colors.white,size: 27,)),
              ),
              const Text('Back',
                style:TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ) ,)
            ],),
          const Padding(
            padding: EdgeInsets.only( left: 80,top: 32),
            child: Image(image: AssetImage('assets/2-removebg-preview 1.png')),
          ),
           Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 210.0),
                  child: Text("Welcome",
                    style:TextStyle(
                      color:Color(0XFF080FB4),
                      fontWeight: FontWeight.w900,
                      fontSize: 45

                    ) ,),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Text("Children missing\n         is here",
                    style:TextStyle(
                        color:Color(0xFFFFFFFF),
                        fontWeight: FontWeight.w700,
                        fontSize: 35

                    ) ,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const SignIn();
                      }));
                    },
                    child: Container(
                      height: 55,
                      width: 300,
                      decoration:  BoxDecoration(
                        color: const Color(0XFFD9D9D9),
                        borderRadius: const BorderRadius.all(Radius.circular(40)),
                          border: Border.all(color: const Color(0XFF080FB4)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0XFF000000).withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: const Offset(4, 10), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(child: Text('Log In',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Color(0XFF024BB1),
                      ),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const SignUP();
                      }));
                    },
                    child: Container(
                      height: 55,
                      width: 300,
                      decoration:  BoxDecoration(
                        color: const Color(0XFFD9D9D9),
                        borderRadius: const BorderRadius.all(Radius.circular(40)),
                        border: Border.all(color: const Color(0XFF080FB4)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0XFF000000).withOpacity(0.25),
                            spreadRadius: 0,
                            blurRadius: 7,
                            offset: const Offset(4, 10), // changes position of shadow
                          ),
                        ],
                      ),
                      child: const Center(child: Text('Sign Up',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0XFF024BB1),
                        ),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}
