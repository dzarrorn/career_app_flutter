import 'package:career_app_flutter/models/user_model.dart';
import 'package:career_app_flutter/pages/home_page.dart';
import 'package:career_app_flutter/pages/sign_in_page.dart';
import 'package:career_app_flutter/providers/auth_provider.dart';
import 'package:career_app_flutter/providers/user_provider.dart';
import 'package:career_app_flutter/theme.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isEmailValid = true;
  bool isUploaded = false;
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController goalController = TextEditingController(text: '');
  bool isLoading = false;
  void showError(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvider>(context);
    var userProvider = Provider.of<UserProvider>(context);
    Widget uploadedImages() {
      return Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isUploaded = !isUploaded;
                });
              },
              child: Image.asset(
                'assets/upload.png',
                width: 120,
                height: 120,
              ),
            )
          ],
        ),
      );
    }

    Widget ShowedImages() {
      return Center(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isUploaded = !isUploaded;
                });
              },
              child: Image.asset(
                'assets/user.png',
                width: 120,
                height: 120,
              ),
            )
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          bottom: false,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffB3B5C4),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Begin New Journey',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff272C2F),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  isUploaded ? ShowedImages() : uploadedImages(),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Full Name',
                    style: regulerGrey.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: nameController,
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: purpleColor,
                        ),
                      ),
                      hintText: '',
                    ),
                    style: TextStyle(color: purpleColor, fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email Address',
                    style: regulerGrey.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: emailController,
                    onChanged: (value) {
                      print(value);
                      bool isValid = EmailValidator.validate(value);
                      print(isValid);
                      if (isValid) {
                        setState(() {
                          isEmailValid = true;
                        });
                      } else {
                        setState(() {
                          isEmailValid = false;
                        });
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                            color: isEmailValid ? purpleColor : pinkColor),
                      ),
                      hintText: '',
                    ),
                    style: TextStyle(
                      color: isEmailValid ? purpleColor : pinkColor,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Password',
                    style: regulerGrey.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: purpleColor),
                      ),
                      hintText: '',
                    ),
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Your Goal',
                    style: regulerGrey.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: goalController,
                    decoration: InputDecoration(
                      fillColor: Color(0xffF1F0F5),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(color: purpleColor),
                      ),
                      hintText: '',
                    ),
                    style: TextStyle(
                      color: purpleColor,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    child: isLoading
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : TextButton(
                            onPressed: () async {
                              if (nameController.text.isEmpty ||
                                  emailController.text.isEmpty ||
                                  passwordController.text.isEmpty ||
                                  goalController.text.isEmpty) {
                                showError('Please write all fields');
                              } else {
                                setState(() {
                                  isLoading = true;
                                });

                                UserModel user = await authProvider.register(
                                  emailController.text,
                                  passwordController.text,
                                  nameController.text,
                                  goalController.text,
                                );
                                setState(() {
                                  isLoading = false;
                                });
                                if (user == null) {
                                  showError('Email Registered');
                                } else {
                                  userProvider.user = user;
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomePage()));
                                }
                              }
                            },
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            style: TextButton.styleFrom(
                                backgroundColor: Color(0xff4141A4),
                                side: BorderSide(color: Colors.white),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(66))),
                          ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                      child: Text(
                        'Back to Sign In',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
