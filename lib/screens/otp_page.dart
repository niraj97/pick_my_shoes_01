import 'package:flutter/material.dart';
import 'package:pickmyshoes01/constants.dart';

class OtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SizedBox(
              height: 300.0,
            ),
            Text(
              'Welcome!',
              style: TextStyle(
                fontSize: 40.0,
                color: kPrimaryTextColor,
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
                        focusedBorder: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.phone,
                          color: kPrimaryTextColor,
                        ),
                      ),
                      keyboardType: TextInputType.numberWithOptions(),
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
                        print('button clicked');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => OtpPage()));
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
              'OTP has been sent to your Phone',
              style: TextStyle(
                fontSize: 18,
                color: kPrimaryTextColor,
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
