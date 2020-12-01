import 'package:flutter/material.dart';
import 'package:hasanat/screens/home/home_screen.dart';
import 'package:hasanat/widgets/emai_builder.dart';
import 'package:hasanat/widgets/language_builder.dart';
import 'package:hasanat/widgets/name_builder.dart';

class SignUpScreen extends StatefulWidget {
  static String routeName = '/';
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  Widget currentView;
  @override
  void initState() {
    getBoolLanguage().then((bool) => {
          print(bool),
          setState(() {
            if (!bool) {
              currentView = LanguageBuilder();
            } else {
              getBoolEmail().then((bool) => {
                    print(bool),
                    setState(() {
                      if (!bool) {
                        currentView = NameBuilder();
                      } else {
                        getBoolEmail().then((bool) => {
                              print(bool),
                              if (!bool)
                                {
                                  currentView = EmailBuilder(),
                                }
                              else
                                {
                                  Navigator.pushNamed(
                                      context, HomeScreen.routeName),
                                }
                            });
                      }
                    })
                  });
            }
          })
        });

    //   SharedPreferences prefs = await SharePreferences.getInstances();
    //   setState(() {
    //   if (!prefs.containsKey('language')) {
    //     currentView = LanguageBuilder();
    //   } else if (prefs.containsKey('language')) {
    //     currentView = NameBuilder();
    //   } else if (prefs.containsKey('language') && prefs.containsKey('name')) {
    //     currentView = HomeScreen();
    //   }
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
      ),
      body: Container(
        child: currentView,
      ),
    );
  }
}
