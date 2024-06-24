import 'package:flutter/material.dart';

class AppBarGround extends StatelessWidget {
  const AppBarGround({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: const Color(0XFF102B51,),
      elevation: 0,
      automaticallyImplyLeading: false,
    );
  }
}
class WaterMark extends StatelessWidget {
  const WaterMark({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
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
    );
  }
}
class BackGround extends StatelessWidget {
  const BackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          color: const Color(0XFFd9d8d8).withOpacity(0.94)
      ),
    );
  }
}
class CurveGround extends StatelessWidget {
  const CurveGround({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
      width:360 ,
      height: 185,
      decoration:  const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/curve.png',)
          )

      ),
    );
  }
}
class BackArrow extends StatelessWidget {
  const BackArrow({super.key,required this.onPressed});
   final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(onPressed: onPressed(),
              icon: const Icon(Icons.arrow_back,color: Colors.white,size: 27,)),
        ),
        const Text('Back',
          style:TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16
          ) ,)
      ],);
  }
}






