import 'package:flutter/material.dart';
import 'package:missing/screens/signin&.up_page.dart';

class LeftPage extends StatelessWidget {
  const LeftPage({super.key});

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
        children:  [
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
          const Padding(
            padding: EdgeInsets.only( left: 90,top: 30),
            child: Image(image: AssetImage('assets/left.png')),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 350,left: 50),
            child: Text("           U Left \n    We will miss U\n           😩😒",
            style: TextStyle(
              color: Color(0XFF080FB4),
              fontSize: 36,
              fontWeight: FontWeight.w800,

            ),
            ),
          )

        ],
      ),
    );
  }
}
