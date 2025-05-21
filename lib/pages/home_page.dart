import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallwt_app1/util/my_button.dart';
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
            ),

            SizedBox(height: 25),

            // los 3 botones enviar pago y factura
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //boton de enviar

                  MyButton(
                    iconImagePath: 'lib/icons/enviar.png',
                    buttonText: 'Enviar',
                  ),

                  //boton de pago

                  MyButton(
                    iconImagePath: 'lib/icons/tarjeta.png',
                    buttonText: 'Enviar',
                  ),

                  //boton de facturas

                  MyButton(
                    iconImagePath: 'lib/icons/factura.png',
                    buttonText: 'facturar',
                  ),
                ],
              ),
            ),

            SizedBox(height: 25),

            // columna con las estadisticas y las trasacciones
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  //estadisticas
                  Row(
                    children: [
                      //icono de las estadisticas s
                      Container(
                        height: 80,
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset('lib/icons/estadisticas.png'),
                      ),

                      SizedBox(
                        width: 20,
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'estadisticas',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'pagos y compras',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          )
                        ],
                      ),

                      Icon(Icons.arrow_forward_ios),
                    ],
                  )

                  // transacciones
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
