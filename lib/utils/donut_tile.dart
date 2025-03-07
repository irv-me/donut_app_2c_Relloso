import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutShop;
  final String donutPrice;
  //Es dynamic porque sera de tipo COLORS
  final dynamic donutColor;
  final String imageName;

  const DonutTile(
      {super.key,
      required this.donutFlavor,
      required this.donutShop,
      required this.donutPrice,
      this.donutColor,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: donutColor[50], borderRadius: BorderRadius.circular(24)),
        child: Column(
          children: [
            //pricetag
            Row(
              //alinea a la derecha
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: donutColor[100],
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
                    child: Text("\$$donutPrice",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: donutColor[800])))
              ],
            ),

            //donut picture
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Image.asset(imageName),
            ),

            //donut tag

            //donut flavor text
            Text(donutFlavor,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            //Espacio entre textos
            const SizedBox(
              height: 4,
            ),

            Text(donutShop,
                style: TextStyle(
                    fontWeight: FontWeight.w100,
                    fontSize: 15,
                    color: Colors.grey[800])),
            //Espacio entre textos
            const SizedBox(
              height: 4,
            ),

            //Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(
                    Icons.favorite_border_outlined,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text("Add",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20, decoration:TextDecoration.underline),),
                )
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
