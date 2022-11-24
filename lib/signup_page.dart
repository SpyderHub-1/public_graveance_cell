import 'dart:convert';

import 'package:public_graveance/core/services/connectivity_service/connectivity_service.dart';
import 'package:public_graveance/dashboard.dart';
import 'package:public_graveance/login_page.dart';
import 'package:public_graveance/utils/either/either.dart';
import 'package:public_graveance/utils/either/failure.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:http/http.dart';
import 'package:nb_utils/nb_utils.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _phoneNo = TextEditingController();
  TextEditingController _locality = TextEditingController();
  TextEditingController _pinCode = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  initState() {
    super.initState();
  }

  Future<Either> _postUserData() async {
    const url =
        'https://dev.grievancecell.info/index.php/Apicontroller/userRegister';

    /// check for internet connection
    if (await ConnectionChecker().isConnected()) {
      /// perform http request
      Response response = await post(
        Uri.parse(url),
        body: jsonEncode({
          'first_name': _firstName.text,
          'last_name': _lastName.text,
          'phone': _phoneNo.text,
          'locality': _locality.text,
          'pincode': _pinCode.text,
          'username': _username.text,
          'password': _password.text,
        }),
      );
      if (response.statusCode == 200) {
        var data = response.body;
        LoginPage().launch(context);
        return right(data);
      } else if (response.statusCode == 500) {
        return left(Failure.commonFailure());
      } else {
        final data = json.decode(response.body);
        return left(Failure.unexpected(errorMsg: data['message']));
      }
    } else {
      return left(const Failure.networkError());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      decoration: BoxDecoration(
          color: Color(0xff00757B),
          border: Border.all(width: 2, color: blackColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          24.height,
          Text('Public Grievance Cell',
              style: TextStyle(fontSize: 30, color: whiteColor)),
          SizedBox(
            height: 50,
          ),
          Text('Create Account',
                  style: TextStyle(fontSize: 20, color: Color(0xffEFEFEF)))
              .paddingBottom(20),
          Container(
            //color: const Color(0xffF0F0F0),
            child: _buildForm(),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyle(color: whiteColor),
              ),
              InkWell(
                onTap: () {
                  LoginPage().launch(context);
                },
                child: Text(
                  ' Sign In',
                  style: TextStyle(color: white),
                ),
              )
            ],
          )
        ],
      ).center().paddingAll(5),
    ).paddingAll(20)));
  }

  Widget _buildForm() {
    return FormBuilder(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          FormBuilderTextField(
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.words,
            name: 'first_name',
            controller: _firstName,
            cursorColor: Colors.black,
            style: TextStyle(fontSize: 12, color: whiteColor),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.person_rounded,
                size: 16,
                color: whiteColor,
              ),
              labelText: 'First Name',
              labelStyle: TextStyle(color: whiteColor),
              filled: true,
              fillColor: Color(0x63ffffff),
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0x2ba9a9a9),
              )),
            ),
          ).withWidth(270).withHeight(40),
          SizedBox(
            height: 20,
          ),
          FormBuilderTextField(
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.words,
            name: 'last_name',
            controller: _lastName,
            cursorColor: Colors.black,
            style: TextStyle(fontSize: 12, color: whiteColor),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.person_rounded,
                size: 16,
                color: whiteColor,
              ),
              labelText: 'Last Name',
              labelStyle: TextStyle(color: whiteColor),
              filled: true,
              fillColor: Color(0x63ffffff),
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0x2ba9a9a9),
              )),
            ),
          ).withWidth(270).withHeight(40),
          SizedBox(
            height: 20,
          ),
          FormBuilderTextField(
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.emailAddress,
            name: 'phone',
            controller: _phoneNo,
            style: TextStyle(fontSize: 12, color: whiteColor),
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.phone,
                size: 16,
                color: whiteColor,
              ),
              labelText: 'Phone',
              labelStyle: TextStyle(color: whiteColor),
              filled: true,
              fillColor: Color(0x63ffffff),
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0x2ba9a9a9),
              )),
            ),
          ).withWidth(270).withHeight(40),
          SizedBox(
            height: 20,
          ),
          FormBuilderTextField(
            autovalidateMode: AutovalidateMode.always,
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.name,
            name: 'locality',
            controller: _locality,
            style: TextStyle(fontSize: 12, color: whiteColor),
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.location_city,
                size: 16,
                color: whiteColor,
              ),
              labelText: 'Locality',
              labelStyle: TextStyle(color: whiteColor),
              filled: true,
              fillColor: Color(0x63ffffff),
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0x2ba9a9a9),
              )),
            ),
          ).withWidth(270).withHeight(40),
          SizedBox(
            height: 20,
          ),
          FormBuilderTextField(
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.words,
            name: 'pin',
            controller: _pinCode,
            style: TextStyle(fontSize: 12, color: whiteColor),
            cursorColor: Colors.black,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.location_city,
                size: 16,
                color: whiteColor,
              ),
              labelText: 'Pin Code',
              labelStyle: TextStyle(color: whiteColor),
              filled: true,
              fillColor: Color(0x63ffffff),
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0x2ba9a9a9),
              )),
            ),
          ).withWidth(270).withHeight(40),
          SizedBox(
            height: 20,
          ),
          FormBuilderTextField(
            keyboardType: TextInputType.name,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.words,
            name: 'username',
            controller: _username,
            cursorColor: Colors.black,
            style: TextStyle(fontSize: 12, color: whiteColor),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.person_rounded,
                size: 16,
                color: whiteColor,
              ),
              labelText: 'Username',
              labelStyle: TextStyle(color: whiteColor),
              filled: true,
              fillColor: Color(0x63ffffff),
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0x2ba9a9a9),
              )),
            ),
          ).withWidth(270).withHeight(40),
          SizedBox(
            height: 20,
          ),
          FormBuilderTextField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            textInputAction: TextInputAction.next,
            textCapitalization: TextCapitalization.words,
            name: 'password',
            controller: _password,
            cursorColor: Colors.black,
            style: TextStyle(fontSize: 12, color: whiteColor),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.remove_red_eye,
                size: 16,
                color: whiteColor,
              ),
              labelText: 'Password',
              labelStyle: TextStyle(color: whiteColor),
              filled: true,
              fillColor: Color(0x63ffffff),
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0x2ba9a9a9),
              )),
            ),
          ).withWidth(270).withHeight(40),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              _postUserData();
            },
            child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0), color: whiteColor
                    /*gradient: const LinearGradient(
                    begin: Alignment(-0.8, 0.0),
                    end: Alignment(1.3, 0.46),
                    colors: [Color(0xffaa3466), Color(0xff212670)],
                    stops: [0.0, 1.0],
                  ),*/
                    ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Color(0xff006A7A),
                    fontSize: 20,
                  ),
                ).center()),
          ),
        ],
      ),
    );
  }
}
