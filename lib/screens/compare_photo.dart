import 'package:flutter/material.dart';
import 'package:missing/screens/pages_content.dart';

class ComparePhoto extends StatelessWidget {
  const ComparePhoto({super.key});

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
            padding:  EdgeInsets.only(left: 100,top: 60),
            child:  Text(' UPLoad &\nCompare  Photo',
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
          Padding(
            padding: const EdgeInsets.only(left: 18,top: 200),
            child: Container(
              height: 540,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white,width: 2)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 33,top: 211.5),
            child: Container(
              height: 520,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0XFF1703FF),width: 2)
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 470,left:34),
            child: Image(image: AssetImage("assets/Line 8.png"),width: 328,),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 250,left:120),
            child: Image(image: AssetImage("assets/circleqr.png")),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 500,left:120),
            child: Image(image: AssetImage("assets/circleqr.png")),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 220,left:300),
            child: Image(image: AssetImage("assets/Vector up.png")),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60,top: 670),
            child: Container(
              height: 35,
              width: 270,
              decoration:  BoxDecoration(
                  color: const Color(0XFFD9D9D9).withOpacity(0.21)
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 100,top: 5),
                child: Text(" text...",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color(0XFF549BFF)

                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
