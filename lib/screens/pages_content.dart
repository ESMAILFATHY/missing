import 'package:flutter/material.dart';
import 'package:missing/screens/compare_photo.dart';
import 'package:missing/screens/delete_account.dart';
import 'package:missing/screens/insert_photo.dart';
import 'package:missing/screens/qr_code.dart';
import 'package:missing/screens/share_page.dart';
import 'package:missing/screens/signin&.up_page.dart';
import 'package:missing/screens/welcome_screen.dart';
import 'package:missing/widgets/content_widgets.dart';
import 'conect_with_us.dart';
import 'logout_page.dart';

class ContentPages extends StatelessWidget {
  const ContentPages({super.key});

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
          ListView(
            children:  [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:270,left: 30),
                    child: ContentWidgets(image: 'assets/home.png', text: '   Main', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const WelcomeScreen();
                      }));
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50,left: 30),
                    child: ContentWidgets(image: 'assets/phone.png', text: '    Connect with us', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const ConnectWithUs();
                      }));
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 50),
                    child: ContentWidgets(image: 'assets/about.png', text: '    About the app', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const WelcomeScreen();
                      }));
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 50),
                    child: ContentWidgets(image: 'assets/share.png', text: '    Share the app', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const SharePage();
                      }));
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 50),
                    child: ContentWidgets(image: 'assets/logout.png', text: '    Log out', onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                         return const LogoutPage();
                       }));
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 50),
                    child: ContentWidgets(image: 'assets/delete.png', text: '    Delete Account', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const DeletePage();
                      }));
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 50),
                    child: ContentWidgets(image: 'assets/plus.png', text: '    Insert photo', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const InsertPhoto();
                      }));
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 50),
                    child: ContentWidgets(image: 'assets/compare.png', text: '    Compare  photo ', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const  ComparePhoto();
                      }));
                    }),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30,top: 50),
                    child: ContentWidgets(image: 'assets/QR.png', text: '    QR Code', onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return const QrCode();
                      }));
                    }),
                  ),

                ],
              )
            ],
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
            padding:  EdgeInsets.only(left: 130,top: 50),
            child:  Text('Hello',
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

        ],
      )

    );
  }
}
