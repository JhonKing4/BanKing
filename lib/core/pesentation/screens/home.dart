import 'package:flutter/material.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(appBar: AppBar(title: Text("Inicio")),
    drawer: NavigationDrawer(children:[
      Text("Transferencia"),
      Text("Pago servicios"),
      Text("Movimientos")
    ]),
    bottomNavigationBar: BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: "Card"),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting")
    ]),
  );}
}