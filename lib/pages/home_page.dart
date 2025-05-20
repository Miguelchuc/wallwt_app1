import 'package:flutter/material.dart';
import 'package:wallwt_app1/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //appBar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //otro Row par evitar que el Main separe el tecxto y solo separe el boton
                  Row(
                    children: [
                      Text(
                        'Mis',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Tarjetas',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),

                  // boton de mas en la esquina superior derecha
                  Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.add)),
                ],
              ),
            ),

            SizedBox(height: 25),

            //Tarjetas
            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(),
                  MyCard(),
                  MyCard(),
                ],
              ),
            )
            // los 3 botones enviar pago y factura

            // columna con las estadisticas y las trasacciones
          ],
        ),
      ),
    );
  }
}
