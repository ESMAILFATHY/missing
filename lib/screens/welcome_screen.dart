import 'package:flutter/material.dart';
import 'package:missing/screens/page1.dart';
import 'package:missing/screens/pages_content.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF102B51,),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Stack
        (
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
              color: const Color(0XFFd9d8d8).withOpacity(0.94)
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
              child: IconButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                return const Page1();
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
            padding:  EdgeInsets.only(left: 120,top: 50),
            child:  Text('Welcome',
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
                padding: EdgeInsets.only( top: 230,left: 15),
                child: Text('Your child’s data is always safe',
                style: TextStyle(
                  color: Color(0XFF080FB4),
                  fontSize: 24,
                  fontWeight: FontWeight.w800
                ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50,left: 40),
                child: Text("*This application is a simple application through which missing children .",
                  style: TextStyle(
                      color: Color(0XFF080FB4),
                      fontSize: 24,
                      fontWeight: FontWeight.w800,


                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50,left: 40),
                child: Text("*Moreover, this application can helps us find children using the QR code .",
                  style: TextStyle(
                    color: Color(0XFF080FB4),
                    fontSize: 24,
                    fontWeight: FontWeight.w800,


                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50,left: 15),
                child: Text("We will always be here for U.",
                  style: TextStyle(
                    color: Color(0XFF080FB4),
                    fontSize: 24,
                    fontWeight: FontWeight.w800,


                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 59.4),
                child: Image(image:AssetImage('assets/bottom_bar.png'),),
              )


            ],
          ),



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

            child: const Image(image: AssetImage('assets/Vector.png'),),
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


