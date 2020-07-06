import 'package:flutter/material.dart';

import '../constants.dart';
import 'otp2.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'main_logo',
                child: Image(
                  image: AssetImage('assets/images/main_logo.png'),
                  width: 200.0,
                ),
              ),
              Text(
                'Welcome!',
                style: TextStyle(
                  fontSize: 40.0,
                  color: kPrimaryTextColor,
                ),
              ),
              MyTextField(
                hintText: 'Full Name',
                keyboardType: TextInputType.text,
              ),
              MyTextField(
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              MyTextField(
                hintText: 'Phone Number',
                keyboardType: TextInputType.number,
              ),
              MyTextField(
                hintText: 'Enter your Password',
                keyboardType: TextInputType.text,
              ),
              MyTextField(
                hintText: 'Confirm Password',
                keyboardType: TextInputType.text,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Checkbox(
                    activeColor: kPrimaryButtonColor,
                    focusColor: kPrimaryButtonColor,
                    checkColor: Colors.white,
                    value: checkBoxValue,
                    onChanged: (value) {
                      //checkbox value
                      setState(() {
                        checkBoxValue = value;
                      });
                    },
                  ),
                  Text(
                    'I accept Terms and Conditions.',
                    style: TextStyle(color: kTextBlueColor),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  //Register button click action
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Otp2()));
                },
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    color: kPrimaryButtonColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Center(
                    child: Text('Register'),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  //register click action
                  Navigator.pop(context);
                },
                child: Text(
                  'Already have an Account? Login Here',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: kTextBlueColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  const MyTextField({Key key, this.hintText, this.keyboardType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          child: TextField(
            onChanged: (value) {
              //textfield values
            },
            cursorColor: kPrimaryTextColor,
            keyboardType: keyboardType,
            style: TextStyle(fontSize: 15.0),
            decoration: InputDecoration(
              hintText: hintText,
              fillColor: Colors.white,
              border: InputBorder.none,
//                  focusedBorder: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
