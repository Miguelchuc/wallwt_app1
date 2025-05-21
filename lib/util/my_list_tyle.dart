import 'package:flutter/material.dart';

class MyListTyle extends StatelessWidget {
  final String iconImagePeth;
  final String tileName;
  final String tileSubname;

  const MyListTyle({
    super.key,
    required this.iconImagePeth,
    required this.tileName,
    required this.tileSubname,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //icono de las estadisticas s
          Container(
            height: 80,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(12)),
            child: Image.asset(iconImagePeth),
          ),

          SizedBox(
            width: 20,
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tileName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                tileSubname,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              )
            ],
          ),

          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
