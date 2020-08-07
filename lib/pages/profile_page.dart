import 'package:doctor_go/components/RoundedButton.dart';
import 'package:doctor_go/constants.dart';
import 'package:doctor_go/pages/nucleoFamiliar_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  static String id = 'profile_screen';

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xFF181C28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 5.0),
                    child: Material(
                      elevation: 5.0,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0),
                      child: MaterialButton(
                          minWidth: 50.0,
                          height: 10.0,
                          onPressed: () {},
                          child: Text('Editar')),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Container(
                  width: 50.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/irene.jpg')),
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    color: Colors.redAccent,
                  ),
                ),
              ),
              Center(
                child: Text(
                  'MELISSA MORAS',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  decoration: new BoxDecoration(
                    
                    border: new Border(top: BorderSide(color: kColorDoctor,width: 3.2)),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: ListView(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'NOMBRE',
                                style: TextStyle(
                                    color: kColorDoctor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(
                                child: Text('Melissa Patricia Moras Jimenez'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'EDAD',
                                style: TextStyle(
                                    color: kColorDoctor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(child: Text('21 Años'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'CÉDULA/T.I',
                                style: TextStyle(
                                    color: kColorDoctor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(child: Text('12472155'))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'DIRECCIÓN',
                                style: TextStyle(
                                    color: kColorDoctor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Expanded(child: Text(''))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                              'NÚCLEO FAMILIAR',
                              style: TextStyle(
                                  color: kColorDoctor,
                                  fontWeight: FontWeight.bold),
                            )),
                            Expanded(
                                child: Text('Incompleto',
                                    style: TextStyle(color: Colors.red)))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                child: Text(
                              'HISTORIAL CLÍNICO',
                              style: TextStyle(
                                  color: kColorDoctor,
                                  fontWeight: FontWeight.bold),
                            )),
                            Expanded(
                                child: Text('Incompleto',
                                    style: TextStyle(color: Colors.red)))
                          ],
                        ),
                        Column(
                          children: [
                            RoundedButton(
                              text: Text(
                                'NÚCLEO FAMILIAR',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: ()=> Navigator.pushNamed(context, NucleoFamiliar.id),
                              colour: kColorDoctor,
                            ),
                            RoundedButton(
                              text: Text(
                                'CREAR HISTORIAL CLÍNICO',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: null,
                              colour: kColorDoctor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
