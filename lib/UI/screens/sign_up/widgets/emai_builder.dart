import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:hasanat/UI/utils/default_button.dart';
import 'package:hasanat/core/services/services.dart';
import '../../screens.dart';

class EmailBuilder extends StatefulWidget {
  static String routeName = '/email';

  @override
  _EmailBuilderState createState() => _EmailBuilderState();
}

class _EmailBuilderState extends State<EmailBuilder> {
  final _emailController = TextEditingController();
  GlobalKey<FormState> _form = GlobalKey<FormState>();
  void _validate() {
    _form.currentState.validate();
  }

  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: emailField(),
          ),
          DefaultButton(
            press: () {
              _validate();
              if (_emailController.text.contains("@")) {
                saveEmailPerfs(_emailController.text).then(
                  (_) => {Navigator.pushNamed(context, SignUpScreen.routeName)},
                );
              }
            },
            text: 'Next',
          ),
        ],
      ),
    );
  }

  TextFormField emailField() {
    return TextFormField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        helperText: "Min length: 3, max lenght: 20",
        hintText: "Enter your Email",
        hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        suffixIcon: Icon(Icons.email),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      validator: ValidationBuilder().minLength(3).email().maxLength(20).build(),
    );
  }
}
