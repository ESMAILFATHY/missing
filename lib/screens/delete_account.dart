import 'package:flutter/material.dart';
import 'package:missing/screens/pages_content.dart';
import 'package:missing/screens/yes_delete.dart';
class DeletePage extends StatelessWidget {
  const DeletePage({super.key});

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
            padding: EdgeInsets.only( left: 120,top: 55),
            child: Image(image: AssetImage('assets/delete_account.png')),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 300,left: 70),
            child: Text(" U will delete it\n   Are U Sure?",
              style: TextStyle(
                color: Color(0XFF080FB4),
                fontSize: 36,
                fontWeight: FontWeight.w800,

              ),
            ),
          ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 450,left: 50),
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
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0XFF000000).withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 7,
                        offset: const Offset(4, 10), // changes position of shadow
                      ),
                    ],


                  ),
                  child: const Center(child: Text('No,Just Kidding.',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF080FB4),
                    ),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 50),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const YesDelete();
                  }));
                },

                child: Container(
                  height: 55,
                  width: 300,
                  decoration:  BoxDecoration(
                    color: const Color(0XFFD9D9D9),
                    borderRadius: const BorderRadius.all(Radius.circular(60)),
                    border: Border.all(color: const Color(0XFF080FB4),width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0XFF000000).withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 7,
                        offset: const Offset(4, 10), // changes position of shadow
                      ),
                    ],

                  ),
                  child: const Center(child: Text('Yes,delete.',
                    style: TextStyle(
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      color: Color(0XFF080FB4),
                    ),
                  )),
                ),
              ),
            ),
          ],
        )


        ],
      ),
    );
  }
}
