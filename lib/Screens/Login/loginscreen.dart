import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:whatsapp_ui/OTP/otpscreen.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  // const Loginscreen({super.key});
  TextEditingController phoneController = TextEditingController();
  String selectedcountry = "India";
  List<String> countries = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "Andorra",
    "Angola",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bhutan",
    "Bolivia",
    "Bosnia and Herzegovina",
    "Botswana",
    "Brazil",
    "Brunei",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cabo Verde",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Colombia",
    "Comoros",
    "Congo (Congo-Brazzaville)",
    "Costa Rica",
    "Croatia",
    "Cuba",
    "Cyprus",
    "Czech Republic",
    "Democratic Republic of the Congo",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Eswatini",
    "Ethiopia",
    "Fiji",
    "Finland",
    "France",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Greece",
    "Grenada",
    "Guatemala",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Honduras",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "Korea, North",
    "Korea, South",
    "Kuwait",
    "Kyrgyzstan",
    "Laos",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Mauritania",
    "Mauritius",
    "Mexico",
    "Micronesia",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "North Macedonia",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Poland",
    "Portugal",
    "Qatar",
    "Romania",
    "Russia",
    "Rwanda",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Vincent and the Grenadines",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Sweden",
    "Switzerland",
    "Syria",
    "Taiwan",
    "Tajikistan",
    "Tanzania",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "United States",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Vatican City",
    "Venezuela",
    "Vietnam",
    "Yemen",
    "Zambia",
    "Zimbabwe"
  ];

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
                text: "Enter your phone number",
                FontKaSize: 20,
                FontKaFamily: "inter",
                TextKaColor: Color(0XFF00A884)),
            SizedBox(
              height: 40,
            ),
            UiHelper.CustomText(
              text: "WhatsApp will need to verify your phone ",
              FontKaSize: 16,
              FontKaFamily: "regular",
            ),
            UiHelper.CustomText(
              text: "number. Carrier charges may apply.  ",
              FontKaSize: 16,
              FontKaFamily: "regular",
            ),
            UiHelper.CustomText(
                text: "What’s my number? ",
                FontKaSize: 16,
                FontKaFamily: "regular",
                TextKaColor: Color(0XFF00A884)),
            // SizedBox(
            //   height: 40,
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 30, 60, 20),
              child: SizedBox(
                // width: 300,
                child: DropdownButtonFormField(
                  items: countries.map((String country) {
                    return DropdownMenuItem(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          country.toString(),
                          // style: TextStyle(fontSize: ),
                        ),
                      ),
                      value: country,
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      selectedcountry = value!;
                    });
                  },
                  value: selectedcountry,
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF05AA82)),
                  )),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 45,
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    initialValue: "91",
                    // style: TextStyle(
                    // fontSize: 14,
                    // ),
                    decoration: InputDecoration(
                      prefixText: "+",
                      prefixStyle: TextStyle(color: Colors.black, fontSize: 20),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF05AA82))),
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                SizedBox(
                  width: 225,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF05AA82))),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButtons(
          callback: () {
            login(phoneController.text.toString());
          },
          buttonName: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phonenumber) {
    if (phonenumber == "") {
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
          "Please Enter Phone Number",
          style: TextStyle(color: Colors.white, fontFamily: "regular", fontWeight: FontWeight.w600),
        ), backgroundColor: Colors.red,));
    }
    else{
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => otpScreen(phoneNumber: phonenumber,),
          ));
    }

  }
}
