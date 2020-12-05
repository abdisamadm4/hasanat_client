import 'package:flutter/material.dart';
import 'package:hasanat/screens/home/home_screen.dart';
import 'package:hasanat/widgets/widgets.dart';
import 'widgets/get/get.dart';
import 'widgets/language_builder.dart';
import 'widgets/widgets.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName = '/';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Widget currentView;

  @override
  void initState() {
    getBoolLanguage().then((key) => {
          print(key),
          if (!key)
            {
              setState(() {
                currentView = LanguageBuilder();
              })
            }
          else
            {
              getBoolName().then((key) => {
                    print(key),
                    if (!key)
                      {
                        setState(() {
                          currentView = NameBuilder();
                        })
                      }
                    else
                      {
                        getBoolEmail().then((key) => {
                              if (!key)
                                {
                                  setState(() {
                                    currentView = EmailBuilder();
                                  })
                                }
                              else
                                {
                                  getBoolGender().then((key) => {
                                        if (!key)
                                          {
                                            setState(() {
                                              currentView = GenderBuilder();
                                            })
                                          }
                                        else
                                          {
                                            setState(() {
                                              Navigator.pushNamed(context,
                                                  HomeScreen.routeName);
                                            })
                                          }
                                      })
                                }
                            })
                      }
                  })
            }
        });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 5,
            ),
            LogoBuilder(),
            SizedBox(
              height: 40,
            ),
            QuranBuilder(),
            Container(
              height: 200,
              child: currentView,
            ),
          ],
        ),
      ),
    );
  }
}
