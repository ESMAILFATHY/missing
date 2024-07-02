// Import the necessary packages
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:missing/screens/previewscreen.dart';
import 'package:missing/screens/signin&.up_page.dart';

// Photo Picker Screen
class PhotoPickerScreen extends StatefulWidget {
  const PhotoPickerScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PhotoPickerScreenState createState() => _PhotoPickerScreenState();
}

class _PhotoPickerScreenState extends State<PhotoPickerScreen> {
  File? _selectedImage;

  // Function to pick image from gallery
  Future<void> _pickImageFromGallery() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
      // Navigate to the next screen with the selected image
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ImagePreviewScreen(image: _selectedImage!),
        ),
      );
    }
  }

  // Function to pick image from camera
  Future<void> _pickImageFromCamera() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
      // Navigate to the next screen with the selected image
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ImagePreviewScreen(image: _selectedImage!),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF102B51,),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body:
      Stack(
        children:[
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
                  return const SignINUpPage();
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
            padding:  EdgeInsets.only(left: 90,top: 60),
            child:  Text('  Upload Photo ',
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
            padding: const EdgeInsets.only(left: 15,top: 200),
            child: Container(
              height: 540,
              width: 360,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white,width: 2)
              ),
            ),
          ),
          Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 200),
              ElevatedButton(

                onPressed:_pickImageFromGallery,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFFD9D9D9), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40), // Rounded corners
                    side: const BorderSide(
                      color: Color(0XFF080FB4), // Border color
                      width: 2, // Border width
                    ),
                  ),
                  elevation: 8, // Button shadow
                  shadowColor:  const Color(0XFF000000).withOpacity(0.25), // Shadow color
                  padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 20), // Button padding
                ),
                child: const Text(
                  'Pick From Gallery',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color:Color(0XFF080FB4)  // Text color
                  ),
                ),
              ),
              const SizedBox(height: 50),
              ElevatedButton(

                onPressed:_pickImageFromCamera,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFFD9D9D9), // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40), // Rounded corners
                    side: const BorderSide(
                      color: Color(0XFF080FB4), // Border color
                      width: 2, // Border width
                    ),
                  ),
                  elevation: 8, // Button shadow
                  shadowColor:  const Color(0XFF000000).withOpacity(0.25), // Shadow color
                  padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 20), // Button padding
                ),
                child: const Text(
                  'Pick From Camera',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color:Color(0XFF080FB4)  // Text color
                  ),
                ),
              ),


            ],
          ),
        ),
      ]),
    );
  }
}

