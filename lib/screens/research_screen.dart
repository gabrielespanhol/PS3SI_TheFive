import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ps_thefive/components/app_bar.dart';

class ResearchScreen extends StatefulWidget {
  ResearchScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _ResearchScreenState createState() => _ResearchScreenState();
}

class _ResearchScreenState extends State<ResearchScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  _ResearchScreenState();

  var listaNiveis = ["São Paulo", "Salvador", "Gramado", "Niterói", "Holambra"];

  @override
  Widget build(BuildContext context) {
    
    final cityField = Material(
      child: Column(
        children: [
          DropdownButtonFormField(
            items: listaNiveis.map(
              (nivel) {
                return DropdownMenuItem(
                  child: Text(nivel),
                  value: nivel,
                );
              },
            ).toList(),
            decoration: new InputDecoration(
              alignLabelWithHint: true,
              labelText: 'Cidade',
            ),
            onChanged: (value) {
              print('change');
            },
            
          ),
        ],
      ),
    );

    final searchButon = Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff000000),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          //Navigator.pushNamed(
           // context,
           // "/",
          //);
        },
        child: Text("Pesquisar",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    final container = Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 80, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 30.0),
            cityField,
            SizedBox(height: 50.0),
            searchButon,
          ],
        ),
      ),
    );
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new GradientAppBaar(""),
              container,
              ],
            ),
          ),
        ),
      )
    );
  }
}
