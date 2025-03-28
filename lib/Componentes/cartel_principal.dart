
import 'package:flutter/material.dart';
import 'package:clone_netflix/Componentes/nav_bar_superior.dart';


class CartelPrincipal extends StatelessWidget{
@override
Widget build(BuildContext context){
 return Column(
 children: <Widget>[
  this.cabecera(),
  this.infoSerie(),
  this.botonera(),
 ],
 );
}

  Widget cabecera() {
    return  Stack(
    children: <Widget>[
    Image.network(
      'https://occ-0-8407-92.1.nflxso.net/dnm/api/v6/6AYY37jfdO6hpXcMjf9Yu5cnmO0/AAAABS6v2gvwesuRN6c28ZykPq_fpmnQCJwELBU-kAmEcuC9HhWX-DfuDbtA-bfo-IrfgNtxl0qwJJlhI6DENsGFXknKkjhxPGTV-qhp.jpg?r=608',
      height: 350.0,
      fit: BoxFit.cover,
    ),
    Container(
      width: double.infinity,
      height: 350.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors:<Color> [
            Colors.black38,
            Colors.black
          ]
        )
      ),
    ),
    SafeArea (child: NavBarSuperior(),
    ),
    ],
  );
  }

  Widget infoSerie(){


    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Telenovelesco', 
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Suspenso insostenible', 
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'De suspenso',  
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
        SizedBox(width: 6.0),
        Icon(Icons.fiber_manual_record, color: Colors.red, size: 5.0),
        SizedBox(width: 6.0),
        Text(
          'Adolescente',  
          style: TextStyle(color: Colors.white, fontSize: 10.0),
        ),
      ],
    );
  }

Widget botonera(){
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.check, color: Colors.white),
            SizedBox(height: 3.0),
            Text ('Mi lista', style: TextStyle(color:  Colors.white, fontSize: 10.0),),
          ],
        ),
        TextButton.icon(onPressed: () {}, style: TextButton.styleFrom(foregroundColor: Colors.white), icon: Icon(Icons.play_arrow, color: Colors.white), label: Text('Reproducir')),
        Column(
          children: <Widget>[
            Icon(Icons.info_outline, color: Colors.white),
            SizedBox(height: 3.0),
            Text ('Informacion', style: TextStyle(color:  Colors.white, fontSize: 9.0),),
          ],
        ),
      ],

    ),
  );
}

}
