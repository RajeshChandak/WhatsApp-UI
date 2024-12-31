import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Profile/profilescreen.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class otpScreen extends StatelessWidget {
  // const otpScreen({super.key});
  String phoneNumber;
  otpScreen({required this.phoneNumber});
  TextEditingController otp1Controller =TextEditingController();
  TextEditingController otp2Controller =TextEditingController();
  TextEditingController otp3Controller =TextEditingController();
  TextEditingController otp4Controller =TextEditingController();
  TextEditingController otp5Controller =TextEditingController();
  TextEditingController otp6Controller =TextEditingController();
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
                text: "Verifying your number",
                FontKaSize: 20,
                // FontKaFamily: "inter",
                TextKaColor: Color(0XFF00A884)),
            SizedBox(
              height: 40,
            ),
            UiHelper.CustomText(
              text: "You’ve tried to register +91-$phoneNumber",
              FontKaSize: 16,
              FontKaFamily: "regular",
            ),
            UiHelper.CustomText(
              text: "recently. Wait before requesting an sms or a call.",
              FontKaSize: 16,
              FontKaFamily: "regular",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(
                  text: "with your code.",
                  FontKaSize: 16,
                  FontKaFamily: "regular",
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: UiHelper.CustomText(
                      text: " Wrong number?",
                      FontKaSize: 16,
                      FontKaFamily: "regular",
                      TextKaColor: Color(0XFF00A884)),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otp1Controller),
                UiHelper.CustomContainer(otp2Controller),
                UiHelper.CustomContainer(otp3Controller),
                UiHelper.CustomContainer(otp4Controller),
                UiHelper.CustomContainer(otp5Controller),
                UiHelper.CustomContainer(otp6Controller),
              ],
            ),
            SizedBox(height: 30,),
            UiHelper.CustomText(text: "Didn’t receive code?", FontKaSize: 14, TextKaColor: Color(0XFF00A884), FontKaFamily: "regular")
          ],
        ),
      ),
      floatingActionButton:  UiHelper.CustomButtons(callback: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => profileScreen()));
      }, buttonName: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
