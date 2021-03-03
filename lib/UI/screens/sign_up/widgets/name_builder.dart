import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:hasanat/UI/utils/default_button.dart';
import 'package:hasanat/config/pallete/constants.dart';
import 'package:hasanat/core/services/services.dart';
import '../sign_up_screen.dart';

class NameBuilder extends StatefulWidget {
  static String routeName = '/name';

  @override
  _NameBuilderState createState() => _NameBuilderState();
}

class _NameBuilderState extends State<NameBuilder> {
  final _nameController = TextEditingController();
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
            child: nameField(),
          ),
          DefaultButton(
            press: () {
              _validate();
              if (_nameController.text.length > 3) {
                saveNamePrefs(_nameController.text).then((_) =>
                    {Navigator.pushNamed(context, SignUpScreen.routeName)});
              }
            },
            text: 'Next',
          ),
        ],
      ),
    );
  }

  TextFormField nameField() {
    return TextFormField(
      validator: ValidationBuilder().minLength(3).maxLength(20).build(),
      controller: _nameController,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        labelText: "Name",
        hintText: "Enter your Name",
        focusColor: kPrimaryColor,
        helperText: "Min length: 5",
        hintStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
        suffixIcon: Icon(
          Icons.person,
          color: kPrimaryColor,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
