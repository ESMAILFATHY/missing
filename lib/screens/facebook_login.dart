import 'package:flutter/material.dart';
import 'package:missing/screens/signin&.up_page.dart';
import 'package:missing/screens/signin_page.dart';

class FaceBookLogIn extends StatelessWidget {
   FaceBookLogIn({super.key,required this.text});
    String? text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            return const SignINUpPage();
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
           Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 220),
            child: Text(" You previously logged in to\n missing with $text.",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w800
            ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 300.0,left: 20),
            child: Text(" Would you like to continue?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350,left:30),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const SignIn();
                }));
              },
              child: Container(
                height: 60,
                width: 330,
                decoration:  BoxDecoration(
                  color: const Color(0XFFD9D9D9),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                child: const Center(child: Text('continue as Talia',
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
            padding: const EdgeInsets.only(top: 425,left:30),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const SignIn();
                }));
              },
              child: Container(
                height: 60,
                width: 330,
                decoration:  BoxDecoration(
                  color: const Color(0XFFD9D9D9),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                child: const Center(child: Text('cancel',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF024BB1),
                  ),
                )),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 500,left: 20),
            child: Text("By Continuing, Missing wil receive\nongoing access to the information that u \nshare and facebook will record when \nmissing accesses it.learn more about this sharing and the setting u have.",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 18
            ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 605,left: 20),
            child: Text("learn more",
                  style: TextStyle(
                      color: Color(0XFF080FB4),
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                  ),
                ),



          ),
          const Padding(
            padding: EdgeInsets.only(top: 605,left: 110),
            child: Text("about this sharing and the ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18
              ),
            ),



          ),
          const Padding(
            padding: EdgeInsets.only(top: 625,left: 20),
            child: Text("setting u have. ",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 18
              ),
            ),



          ),
          const Padding(
            padding: EdgeInsets.only(left: 20,top: 675),
            child: Row(
              children: [
                Text("missing’s ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                  ),
                ),
                Text("privacy policy ",
                  style: TextStyle(
                      color: Color(0xff080FB4),
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                  ),
                ),
                Text("and ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 18
                  ),
                ),
                Text("terms of Service ",
                  style: TextStyle(
                      color: Color(0xff080FB4),
                      fontWeight: FontWeight.w500,
                      fontSize: 18
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
