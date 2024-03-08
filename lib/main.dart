import 'dart:html';

import 'package:banking/core/data/models/cardModel.dart';
import 'package:banking/core/data/models/userModel.dart';
import 'package:banking/core/domain/entities/user.dart';
import 'package:banking/core/domain/entities/card.dart';
import 'package:banking/core/pesentation/widgets/card_widget.dart';
import 'package:banking/core/pesentation/widgets/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'El mejor Banco: Banking'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final User user = User(
        name: "Jhonking",
        email: "king@gmail.com",
        password: "12455",
        telephone: "95213322");
    final CardEntity card = CardEntity(
        cardOwner: "Jhonking",
        cardNumber: "1245388",
        cardDate: "15/25",
        logo: "logo");
    final UserModel userModel = UserModel.fromEntity(user);
    final CardModel cardModel = CardModel.fromEntity(card);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
          child: Container(
              width: 300,
              height: 400,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(234, 190, 63, 50),
                  borderRadius: BorderRadiusDirectional.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 238, 68, 68),
                        spreadRadius: 2,
                        blurRadius: 4,
                        offset: Offset(0, 0))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //Text(userModel.name),
                  //Text(cardModel.cardNumber),
                  //CardWidget(),
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1.0,
                        margin: EdgeInsets.all(1.0),
                        color: (Colors.white),
                      ),
                      Text(
                        "4915 6695 2397 5603",
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                    ],
                  ),*/
                  //CardWidget1(),
                  //Demo2(user: user),
                  //CardWidget2(),
                  //Demo1(user: user),
                  LoginPage(),
                  //ElevatedButton(onPressed: () => {}, child: Text("Press"))
                ],
              ))),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Demo1 extends StatelessWidget {
  final User user;

  Demo1({required this.user});

  @override
  Widget build(BuildContext context) {
    return Text(user.name);
  }
}
