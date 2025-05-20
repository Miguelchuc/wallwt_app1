import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.deepPurple[300],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          //alineamos los textos pegado al borde izquierdo
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'Balance',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '\$5,250.30',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //numero de la tarjeta
                Text(
                  '**** 3456',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                //fecha de expliracion
                Text(
                  '10/28',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
