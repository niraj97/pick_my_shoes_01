import 'package:flutter/material.dart';
import 'package:pickmyshoes01/constants.dart';
import 'package:pickmyshoes01/screens/otp_page.dart';
import 'package:pickmyshoes01/screens/otp2.dart';
import 'package:pickmyshoes01/screens/register_page.dart';
import 'package:pickmyshoes01/components/entrance_fader.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Hero(
              tag: 'main_logo',
              child: Image(
                image: AssetImage('assets/images/main_logo.png'),
                width: 300.0,
              ),
            ),
            EntranceFader(
              child: Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 40.0,
                  color: kPrimaryTextColor,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: TextField(
                      cursorColor: kPrimaryTextColor,
                      style: TextStyle(fontSize: 15.0),
                      decoration: InputDecoration(
                        hintText: 'Enter Your Phone Number',
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.phone,
                          color: kPrimaryTextColor,
                        ),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        //TextField onChanged
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        //SendOTP Button clicked
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => Otp2()));
                      },
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: kPrimaryButtonColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                        ),
                        child: Center(
                          child: Text(
                            'Send OTP',
                            style: TextStyle(
                                fontSize: 16.0, color: kTextWhiteColor),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Text(
              'Or\nLogin with',
              style: TextStyle(
                fontSize: 18,
                color: kPrimaryTextColor,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/facebook_logo.png'),
                  width: 50.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Image(
                  image: AssetImage('assets/images/google_logo.png'),
                  width: 50.0,
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                //register click action
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => RegisterPage()));
              },
              child: Text(
                'Don\'t have Account? Sign up here',
                style: TextStyle(
                  fontSize: 15.0,
                  color: kTextBlueColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
