import 'package:flutter/material.dart';

class loginform extends StatefulWidget {
  const loginform({super.key});

  @override
  State<loginform> createState() => _loginformState();
}

class _loginformState extends State<loginform> {
  // form key is something like the id for the form
  var _formkey = GlobalKey<FormState>();
  // new way to associate input with variables
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    // controller is used to automatically update without
                    // using setState
                    controller: username,
                    // validator function when return string means error
                    // when null there is no error
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your username';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        label: Text('Username'), border: OutlineInputBorder()),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: TextFormField(
                      // obsure text is for displaying dots instead of text
                      obscureText: true,
                      controller: password,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          label: Text('Password'), border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // this initiates validation form the text input field inside the form
                if (_formkey.currentState!.validate()) {
                  String message = "Failed";
                  if (username.text == 'admin' && password.text == "admin") {
                    message = "Success";
                  }
                  Navigator.of(context).popAndPushNamed('/home');


                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
