import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallwt_app1/util/my_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //control de la pagina
  final _controller = PageController();

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
                controller: _controller,
                children: [
                  MyCard(
                    balance: 3892.20,
                    cardNumber: 1238901,
                    expiryMonth: 12,
                    expiryYear: 28,
                    color: Colors.deepPurple[300],
                  ),
                  MyCard(
                    balance: 9882.20,
                    cardNumber: 4328901,
                    expiryMonth: 09,
                    expiryYear: 30,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    balance: 8892.20,
                    cardNumber: 1243901,
                    expiryMonth: 02,
                    expiryYear: 27,
                    color: Colors.red[300],
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),
            //efecto de deslizamiento de la barra de tyarjetas los puntos
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
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
