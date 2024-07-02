import 'package:flutter/material.dart';
import 'package:missing/screens/insert_photo.dart';

class InformationOne extends StatelessWidget {
  const InformationOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF102B51,),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Stack(
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
                  return const PhotoComparePage();
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
            padding:  EdgeInsets.only(left: 80,top: 60),
            child:  Text('   Photo Information ',
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
            padding: const EdgeInsets.only(left: 15,top: 190),
            child: Container(
              height: 560,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white,width: 2)
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 200,left: 120),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: const Color(0XFF080FB4),width: 2)),
              width: 150,
              height: 150,
              child: Image.asset("assets/red tishirt.jpg",fit: BoxFit.cover),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 475,left:17),
            child: Image(image: AssetImage("assets/Line 8.png"),width: 355,),
          ),
           const Padding(
             padding: EdgeInsets.only(left: 25,top: 355),
             child: Text("Name :    Ahmed Mohamed Taha",
               style:TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 18

               ) ,),
           ),

          const Padding(
            padding: EdgeInsets.only(left: 25,top: 385),
            child: Text("  Age  :    Five Year",
              style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18

              ) ,),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25,top: 420),
            child: Text(" City   :    Mansoura",
              style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18

              ) ,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 90,top: 485),
            child: Container(
              padding: const EdgeInsets.all(8),
              height: 55,
              width: 200,
              decoration: BoxDecoration(
                color: const Color(0XFF080FB4),
                borderRadius:
                const BorderRadius.all(Radius.circular(5)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0XFF000000).withOpacity(
                        0.25),
                    spreadRadius: 0,
                    blurRadius: 7,
                    offset: const Offset(
                        4, 10), // changes position of shadow
                  ),
                ],
              ),
              child: const Center(
                  child: Text(
                    'Person Information ',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w600,
                      color: Color(0XFFFFFFFF),
                    ),
                  )),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25,top: 565),
            child: Text("Name   :    Mohamed Fathy Ismail",
              style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18

              ) ,),
          ),

          const Padding(
            padding: EdgeInsets.only(left: 25,top: 640),
            child: Text("Phone  :   01156895958",
              style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18

              ) ,),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25,top: 600),
            child: Text(" City     :    Mahala",
              style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18

              ) ,),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25,top: 680),
            child: Text(" Age     :    45",
              style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18

              ) ,),
          ),

        ],
      ),
    );
  }
}
