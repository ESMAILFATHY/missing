import 'package:flutter/material.dart';
import 'package:missing/screens/pages_content.dart';

import 'left_page.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

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
      body:  Stack(
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
                            return const ContentPages();
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
            padding: EdgeInsets.only( left: 80,top: 15),
            child: Image(image: AssetImage('assets/Group 6.png')),
          ),
          const Padding(
            padding: EdgeInsets.only( left: 135,top: 70),
            child: Image(image: AssetImage('assets/log_out.png')),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 270),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("You’re  Leaving \n  Are U Sure?",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w800,
                    color: Color(0XFF080FB4)
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: GestureDetector(
                    onTap: (){
                      showDialog(context: context, builder: (context){
                        return    AlertDialog(
                          backgroundColor: const Color(0XFFD9D9D9),
                          content: const Padding(
                            padding: EdgeInsets.only(top: 70),
                            child: Text("Okey ☺\n️ ️",
                             style: TextStyle(
                               color: Color(0XFF080FB4),
                               fontSize: 64,
                               fontWeight: FontWeight.w600
                             ),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            side:  BorderSide(color: const Color(0XFF080FB4).withOpacity(0.7), width: 3),
                            borderRadius: BorderRadius.circular(20),
                          ),

                        );
                      });
                    },

                    child: Container(
                      height: 55,
                      width: 300,
                      decoration:  BoxDecoration(
                        color: const Color(0XFFD9D9D9),
                        borderRadius: const BorderRadius.all(Radius.circular(60)),
                        border: Border.all(color: const Color(0XFF080FB4),width: 2),

                      ),
                      child: const Center(child: Text('No,Just Kidding.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF080FB4),
                        ),
                      )),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return  const LeftPage();
                      }));
                    },

                    child: Container(
                      height: 55,
                      width: 300,
                      decoration:  BoxDecoration(
                        color: const Color(0XFFD9D9D9),
                        borderRadius: const BorderRadius.all(Radius.circular(60)),
                        border: Border.all(color: const Color(0XFF080FB4),width: 2),

                      ),
                      child: const Center(child: Text('Yes,log me out.',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w500,
                          color: Color(0XFF080FB4),
                        ),
                      )),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 65.7),
                  child: Image(image: AssetImage('assets/blue_curve.png',),),
                )
              ],
            ),
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

            child: const Image(image: AssetImage('assets/logout.png'),),
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
