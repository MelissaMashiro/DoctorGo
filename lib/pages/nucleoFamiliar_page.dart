import 'package:doctor_go/constants.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                //falta icono
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                      minWidth: 50.0,
                      height: 10.0,
                      onPressed: () {},
                      child: Text('Editar núcleo familiar')),
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF282F3F),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        //  BorderRadius.all(Radius.circular(100.0)),
                      ),
                      child: Text(
                        'HIJOS',
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
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, right: 100),
                        child: Container(
                          width: 10.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: kColorDoctor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                          child: ListTile(
                            title: Text('Maria SanMiguel'),
                            trailing: Icon(Icons.remove_red_eye),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, right: 100),
                        child: Container(
                          width: 10.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: kColorDoctor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                          child: ListTile(
                            title: Text('Victor SanMiguel'),
                            trailing: Icon(Icons.remove_red_eye),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xFF282F3F),
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20)),
                        //  BorderRadius.all(Radius.circular(100.0)),
                      ),
                      child: Text(
                        'ADULTOS MAYORES A SU CARGO',
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
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, right: 100),
                        child: Container(
                          width: 10.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                            color: kColorDoctor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(100.0),
                            ),
                          ),
                          child: ListTile(
                            title: Text('Daxara Delgado'),
                            trailing: Icon(Icons.remove_red_eye),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
