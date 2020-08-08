import 'package:doctor_go/constants.dart';
import 'package:doctor_go/pages/addHijo_page.dart';
import 'package:flutter/material.dart';

class NucleoFamiliar extends StatefulWidget {
  static String id = 'nucleoFamiliar_screen';
  @override
  _NucleoFamiliarState createState() => _NucleoFamiliarState();
}

class _NucleoFamiliarState extends State<NucleoFamiliar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: NucleoContainer(
              title: 'HIJOS',
              listaPersonas: [
                WidgetPersona(
                  nombre: 'Mariana Puche',
                  colour: kColorDoctor,
                  icono: Icons.remove_red_eye,
                ),
                WidgetPersona(
                  nombre: 'Victor SanMiguel',
                  colour: kColorDoctor,
                  icono: Icons.remove_red_eye,
                ),
                WidgetPersona(
                  nombre: 'Añadir hijo',
                  colour: Colors.white,
                  icono: Icons.add,
                  onTap: () => Navigator.pushNamed(context, AddHijo.id),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: NucleoContainer(
              title: 'ADULTOS MAYORES A SU CARGO',
              listaPersonas: [
                WidgetPersona(
                  nombre: 'Victor SanMiguel',
                  colour: kColorDoctor,
                  icono: Icons.remove_red_eye,
                ),
                WidgetPersona(
                  nombre: 'Añadir adulto',
                  colour: Colors.white,
                  icono: Icons.add,
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

//contenedor reusable
class NucleoContainer extends StatelessWidget {
  NucleoContainer({@required this.title, this.listaPersonas});
  final String title;
  final List<Widget>
      listaPersonas; //sin widget sale error, porque un listview solo recibira widgets

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF282F3F),
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(20)),
                  //  BorderRadius.all(Radius.circular(100.0)),
                ),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Container(
            height: 210.0,
            width: double.infinity,
            color: Color(0xFFEBEBEB),
            child: ListView(children: listaPersonas),
          ),
        ],
      ),
    );
  }
}

//Botones reusables para cada persona
class WidgetPersona extends StatelessWidget {
  WidgetPersona({this.onTap, this.nombre, this.icono, this.colour});

  final String nombre;
  final Function onTap;
  final IconData icono;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 10, right: 100),
      child: Container(
        width: 10.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.all(
            Radius.circular(100.0),
          ),
        ),
        child: ListTile(
          title: Text(nombre),
          trailing: Icon(icono),
          onTap: onTap,
        ),
      ),
    );
  }
}
