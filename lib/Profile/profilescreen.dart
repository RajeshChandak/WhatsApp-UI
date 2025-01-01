//Shree

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class profileScreen extends StatefulWidget {
  @override
  State<profileScreen> createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  TextEditingController nameController = TextEditingController();

  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            UiHelper.CustomText(
              text: "Profile info",
              FontKaSize: 20,
              TextKaColor: Color(0XFF00A884),
            ),
            SizedBox(
              height: 30,
            ),
            UiHelper.CustomText(
                text: "Please provide your name and an optional",
                FontKaSize: 16,
                FontKaFamily: "regular"),
            UiHelper.CustomText(
                text: "profile photo", FontKaSize: 16, FontKaFamily: "regular"),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                _openBottomSheet(context);
              },
              child: pickedImage==null?CircleAvatar(
                  radius: 57,
                  backgroundColor: Color(0XFFD9D9D9),
                  child: Icon(
                    Icons.camera_alt,
                    color: Colors.grey,
                    size: 30,
                  )):CircleAvatar(
                  radius: 57,
                  // backgroundColor: Color(0XFFD9D9D9),
                  backgroundImage: FileImage(pickedImage!),
                  child: Opacity(
                    opacity: 0.5,
                    child: Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                      size: 30,
                      fill: 0.9,
                    ),
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 260,
                  child: TextField(
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    style: TextStyle(
                      fontFamily: "regular",
                    ),
                    decoration: InputDecoration(
                        prefixText: "  ",
                        hintText: "Type your name here",
                        hintStyle: TextStyle(
                          fontFamily: "regular",
                        ),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF05AA82)))),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  "assets/images/happy-face 1.png",
                  width: 33,
                  fit: BoxFit.cover,
                )
              ],
            ),

          ],
        ),
      ),
      floatingActionButton:
          UiHelper.CustomButtons(callback: () {}, buttonName: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            // width: double.infinity,
            height: 150,
            color: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      GestureDetector(
                        onTap: (){
                          _pickImage(ImageSource.camera);
                        },
                        child: Icon(
                              Icons.camera_alt,
                              size: 69,
                              color: Colors.white70,
                            )),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          _pickImage(ImageSource.gallery);

                        },
                        child:Icon(
                              Icons.image,
                              size: 69,
                              color: Colors.white70,
                            )),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imagesource);
      if (null == photo)return;
      final tempimage = File(photo.path);
      setState(() {
        pickedImage = tempimage;
      });
    } catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          ex.toString(),
          style: TextStyle(color: Colors.white),
        ),
        duration: Duration(seconds: 2),
        backgroundColor: Colors.red,
      ));
    }
  }
}

