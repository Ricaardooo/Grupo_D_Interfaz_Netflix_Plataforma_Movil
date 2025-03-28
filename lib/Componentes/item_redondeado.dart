import 'package:flutter/material.dart';

class ItemRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,

          children: <Widget>[
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(color: Colors.yellow, width: 2.0),
              ),
              child: ClipOval(
                child: Image.network(
                  'https://lumiere-a.akamaihd.net/v1/images/image_81e2d881.jpeg?region=0%2C0%2C540%2C810&width=320',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Image.asset(
              'assets/imgs/Captain_America_Civil_War_logo.png',
              width: 100.0,
            ),
          ],
        ),
        SizedBox(width: 10.0),
      ],
    );
  }
}
