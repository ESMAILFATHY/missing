import 'package:flutter/material.dart';
import 'package:missing/screens/pages_content.dart';
import 'package:missing/screens/text.dart';

class ScanQRCode extends StatelessWidget {
  const ScanQRCode({super.key});

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
            padding:  EdgeInsets.only(left: 90,top: 60),
            child:  Text('  QR code Photo',
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
          const Padding(
            padding: EdgeInsets.only(top: 270,left: 115),
            child: Text("Scan QR Code",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const TextPage();
              }));
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 50,top: 350),
              child: Image(image: AssetImage("assets/scanqr.png")),
            ),
          )
        ],
      ),
    );
  }
}
