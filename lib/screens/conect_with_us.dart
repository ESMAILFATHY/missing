import 'package:flutter/material.dart';
import 'package:missing/screens/pages_content.dart';
import 'package:missing/screens/welcome_screen.dart';

class ConnectWithUs extends StatelessWidget {
  const ConnectWithUs({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                            return const WelcomeScreen();
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
            padding:  EdgeInsets.only(left: 110,top: 50),
            child:  Text('Connect  Us',
                style: TextStyle(
                    color: Color(0XFFBFC2FF),
                    fontWeight: FontWeight.w800,
                    fontSize: 24
                )),
          ),
          const Padding(
            padding: EdgeInsets.only( left: 35,top: 15),
            child: Image(image: AssetImage('assets/logo.png')),
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top:330),
                child: Text(        "                 Hello\n You can connect with us",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 31,
                  fontWeight: FontWeight.w700
                ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Image(image: AssetImage('assets/phone.png')),
                    ),
                    Text("       012586614565\n       011458965549\n       010599745663",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w800
                    ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 73.5),
                child: Image(image: AssetImage('assets/blue_curve.png',),),
              )

            ],
          )

        ],
      ),
      floatingActionButton:

      Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(

          height: 75,
          width: 75,
          child: FloatingActionButton(
            backgroundColor: const Color(0XFF080FB4),
            elevation: 0,

            child: const Image(image: AssetImage('assets/phone.png'),),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const ContentPages();
              }));
            },
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,


    );
  }
}
