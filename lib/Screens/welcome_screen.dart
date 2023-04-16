import 'package:sellerside/providers/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:sellerside/Screens/first_look.dart';
import 'package:provider/provider.dart';


class WelcomeScreen extends StatelessWidget {
  static const String screenId = 'welcome';
  @override
  Widget build(BuildContext context) {

    final auth = Provider.of<AuthProvider>(context);
    bool _validPhoneNumber = false;
    var _phoneNumberController = TextEditingController();
    String countryCode = "+91";
    void showBottomSheet(context) {
      showModalBottomSheet(
        context: context,
        builder: (context) => StatefulBuilder(
          builder: (context, StateSetter myState) {
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'LOGIN',
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      'Enter your phone number to proceed',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        prefixText: '+91',
                        labelText: '10 digit mobile number',
                      ),
                      autofocus: true,
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      onChanged: (value){
                        if(value.length ==10){
                          myState((){
                            _validPhoneNumber = true;
                          });
                        }else{
                          myState((){
                            _validPhoneNumber = false;
                          });
                        }
                      },
                      controller: _phoneNumberController, // this line assigns the controller to the TextField
                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AbsorbPointer(
                            absorbing: _validPhoneNumber ? false:true,
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: _validPhoneNumber ? Theme.of(context).primaryColor : Colors.grey,
                              ),
                              onPressed: () {
                                String number = '$countryCode${_phoneNumberController.text}';
                                auth.verifyPhone(context,number);
                                print("PHONE NUMBER");
                                print(number);
                              },
                              child: Text(_validPhoneNumber ? 'CONTINUE': 'ENTER PHONE NUMBER',
                                style: TextStyle(color: Colors.white), // set text color to black

                              ),
                            ),
                          ),
                        ),

                      ],
                    )

                  ],
                ),
              ),
            );
          },
        ),
      );
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(child: FirstLook()),
                Text(
                  'Ready to order from your nearest shop?',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.lightGreen,
                  ),
                  onPressed: () {
                    // do something when the button is pressed
                  },
                  child: Text('SET DELIVERY LOCATION',
                      style: TextStyle(color: Colors.white)),
                ),
                TextButton(
                  child: RichText(
                    text: TextSpan(
                      text: 'Already a Customer ?  ',
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                          text: ' Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightGreen,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    showBottomSheet(context);
                  },
                ),
              ],
            ),
            Positioned(
              top: 20,
              right: 5,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {
                  // do something when the button is pressed
                },
                child: Text(
                  'SKIP',
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
