import 'package:public_graveance/core/login_model.dart';
import 'package:public_graveance/core/services/api_services.dart';
import 'package:public_graveance/dashboard.dart';
import 'package:public_graveance/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  final result = <LoginModel>[];

  var _isLoading = true;
  @override
  initState() {
    super.initState();
  }

  Future<void> _getLoginDetails() async {
    /// calling one sample get API
    String param = '5';
    final response = await apiServices.post(
        slug: 'userLogin',
        body: {'username': _username.text, 'password': _password.text});
    // try {
    response.fold(
      (left) {
        /// handle the failure here by showing a snackbar or something
        setState(() {
          _isLoading = false;
        });
      },
      (entries) {
        setState(() {
          _isLoading = false;
          result.add(LoginModel.fromJson(
            entries as Map<String, dynamic>,
          ));
        });
        if (result[0].errorSts == 'false') {
          DashboardScreen(userId: result[0].userId).launch(context);
        } else if (result[0].errorSts == 'true') {
          Fluttertoast.showToast(
            msg: "Hello, World!",
            textColor: Colors.white,
            toastLength: Toast.LENGTH_SHORT,
            timeInSecForIosWeb: 1,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.indigo,
          );
        }
      },
    );
  }

  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      decoration: BoxDecoration(
          color: Color(0xff00757B),
          border: Border.all(width: 2, color: Colors.black)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          24.height,
          const Text('Public Grievance Cell',
                  style: TextStyle(fontSize: 30, color: Colors.white))
              .paddingBottom(30),
          Image.asset(
            'assets/complaint_managment_system.png',
            height: 200,
            width: 200,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text('Login',
                  style: TextStyle(fontSize: 20, color: Color(0xffEFEFEF)))
              .paddingBottom(20),
          Container(
            //color: const Color(0xffF0F0F0),
            child: _buildForm(),
          ).center(),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(color: white),
              ),
              InkWell(
                onTap: () {
                  SignUpPage().launch(context);
                },
                child: const Text(
                  ' Sign Up',
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
            name: 'username',
            controller: _username,
            cursorColor: Colors.black,
            style: TextStyle(fontSize: 12, color: Colors.white),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.person_rounded,
                size: 16,
                color: Colors.white,
              ),
              labelText: 'Username',
              labelStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: Color(0x63ffffff),
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0x2ba9a9a9),
              )),
            ),
          ).withWidth(270).withHeight(40),
          const SizedBox(
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
            style: TextStyle(fontSize: 12, color: Colors.white),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.remove_red_eye,
                size: 16,
                color: Colors.white,
              ),
              labelText: 'Password',
              labelStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: Color(0x63ffffff),
              focusColor: Colors.white,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Color(0x2ba9a9a9),
              )),
            ),
          ).withWidth(270).withHeight(40),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              _getLoginDetails();
            },
            child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  color: Colors.white,
                ),
                child: const Text(
                  'Login',
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
