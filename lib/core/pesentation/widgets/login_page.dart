import 'dart:html';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  bool _isChecked = false;

  String _phoneNumber = "";
  String _password = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.network("https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt8a61c9bc550bfd80/6595f3c89123ba0407bb1649/1863295425_2.jpg?auto=webp&format=pjpg&width=3840&quality=60")
        ),
        //Image.network("https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt8a61c9bc550bfd80/6595f3c89123ba0407bb1649/1863295425_2.jpg?auto=webp&format=pjpg&width=3840&quality=60", width: 200,),
        TextField(
            decoration: InputDecoration(hintText: "Phone number"),
            controller: TextEditingController(text: _phoneNumber)),
        TextField(
          decoration: InputDecoration(hintText: "Password"),
          controller: TextEditingController(text: _password),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: _isChecked,
              onChanged: (newValue) => {setState(() => _isChecked = newValue!)},
              checkColor: Color.fromRGBO(255, 255, 255, 1),
              fillColor:
                  MaterialStateProperty.all(Color.fromRGBO(105, 0, 0, 1)),
            ),
            Text("Mantener sesion activa")
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("Login", style: TextStyle(color: Colors.white),),
          style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Color.fromRGBO(35, 206, 169, 0))),
        )
      ],
    );
  }
}
