import 'package:flutter/material.dart';
import 'package:missing/screens/signin&.up_page.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0XFFD9D9D9),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 187),
            child: Image.asset('assets/MISSING_KIDS.png'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const SignINUpPage();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.only(top: 38,),
                  padding:const EdgeInsets.only(left: 30,top: 20) ,
                  width:130,
                  height:150 ,
                  decoration:     const BoxDecoration(
                    color: Color(0XFF024BB1),
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(150), ),
                  ),
                  child: const Center(
                    child: Text('Next',style: TextStyle(color: Color(0XFFBFC2FF),
                        fontWeight: FontWeight.w700,
                        fontSize:35

                    ),),
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
