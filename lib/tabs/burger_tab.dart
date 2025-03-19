

import 'package:donutapp/utils/donut_tile.dart';
import 'package:flutter/material.dart';

class BurgerTab extends StatelessWidget {
  //Lista de donas
    final List donutsOnSale = [
 
   // [ donutFlavor, donutPrice, donutColor, imageName ]

   ["Ice Cream","Kryspy Kreme", "36", Colors.blue, "lib/images/icecream_donut.png"],
   ["Strawberry","Dunkin Donuts", "45", Colors.red, "lib/images/strawberry_donut.png"],
   ["Grape Ape","Aurrera", "84", Colors.purple, "lib/images/grape_donut.png"],
   ["Choco","Costco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
   ["a","Costco", "95", Colors.deepPurple, "lib/images/chocolate_donut.png"],
   ["a","Costco", "95", Colors.deepPurple, "lib/images/chocolate_donut.png"],
   ["a","Costco", "95", Colors.deepPurple, "lib/images/chocolate_donut.png"],
   ["a","Costco", "95", Colors.deepPurple, "lib/images/chocolate_donut.png"],
   

];
  
  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    //Widget para usar cuadrícula
    return GridView.builder(
        //Cuántos elementos hay
        itemCount: donutsOnSale.length,
        padding: EdgeInsets.all(12),
        //cómo se distrubuirán los elementos
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //Cuántas columnas
          crossAxisCount: 2,
          
          //rELACION DE ASPECTO
          childAspectRatio: 1/1.5,
        ),
        itemBuilder: (context, index) {
            
           return DonutTile(
             donutFlavor: donutsOnSale[index][0],
             donutShop: donutsOnSale[index][1],
             donutPrice: donutsOnSale[index][2],
             donutColor: donutsOnSale[index][3],
             imageName: donutsOnSale[index][4],
           );
});}}