import 'package:banking/core/domain/entities/user.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 3.0,
          margin: EdgeInsets.all(1.0),
          color: (Colors.white),
        ),
        Image.asset("assets/images/iconbanorte1.png", height: 40.0),
        const Text(
          "Banorte",
          style: TextStyle(
              color: Colors.white, fontSize: 38.0, fontFamily: "Card"),
        ),
        const Text(
          "Debito",
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ],
    );
  }
}

class CardWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 1.0,
          margin: EdgeInsets.all(1.0),
          color: (Colors.white),
        ),
        const Text(
          "04/30",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Image.asset(
          "assets/images/chip.png",
          height: 50.0,
        )
      ],
    );
  }
}

class CardWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 1.0,
          margin: EdgeInsets.all(1.0),
          color: (Colors.white),
        ),
        const Text(
          "Jhoandi Abraham Ciau Cetz",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Image.asset("assets/images/visa.png", height: 30.0),
      ],
    );
  }
}

class Demo2 extends StatelessWidget{
  final User user;

  Demo2({required this.user});

  @override
  Widget build(BuildContext context) {
    return Text(user.telephone);
  }
}