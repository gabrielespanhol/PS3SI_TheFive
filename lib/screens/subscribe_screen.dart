import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubscribeScreen extends StatefulWidget {
  SubscribeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SubscribeScreenState createState() => _SubscribeScreenState();
}

class _SubscribeScreenState extends State<SubscribeScreen> {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

  _SubscribeScreenState();
  bool isCheckedF = false;
  bool isCheckedM = false;

  @override
  Widget build(BuildContext context) {

    final fullnameField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Nome Completo",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final cfpField = TextField(
      obscureText: false,
      keyboardType: TextInputType.number,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "CPF",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final emailField = TextField(
     obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Email",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );

    final enderecoField = TextField(
     obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Endereço",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );



    final phoneField = TextField(
      keyboardType: TextInputType.number,
      obscureText: false,
      style: style,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Telefone",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
    

    final sexoField = Material(
      child: new Column(
        children: <Widget>[
          new Row(
            children: <Widget>[
              new Checkbox(
                onChanged: (bool resp) {
                  setState(() {
                    isCheckedF = resp;
                  });
                },
                value: isCheckedF,
              ),
              new Text("Feminino",
                  style: TextStyle(
                    fontSize: 20,
                  )),
              new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Checkbox(
                        onChanged: (bool resp) {
                          setState(() {
                            isCheckedM = resp;
                          });
                        },
                        value: isCheckedM,
                      ),
                      new Text("Masculino",
                          style: TextStyle(
                            fontSize: 20,
                          )),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );

    final marginSexoField = Material(
      child: Padding(
        padding: EdgeInsets.only(left: 45),
        child: sexoField,
      ),
    );

    final voltar = Material(
        child: GestureDetector(
        onTap: () =>  (
         Navigator.pop(context)
        ),
       child :Text("Voltar",
        textAlign: TextAlign.center,
         style: TextStyle(
           color: Color(0xff38b6ff),
           fontSize: 18,
           fontWeight: FontWeight.bold,
         ),
      ),
      )

    );

    final registerButon = Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff38b6ff),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Link para pagamento enviado por email",
                      textAlign: TextAlign.center,
                    ),
                    duration: const Duration(milliseconds: 2000),
                    backgroundColor: Color(0xff38b6ff),
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                    width: 200,
                  ),
                );
        },
        child: Text("Inscrever-se",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );

    var dropdownValue = ["16 - 19 anos","20 - 25 anos","26 - 32 anos","33 - 40 anos","41 - 50 anos","51 - 60 anos","60 anos+",];
    final idade = Material(
      
        child: Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              Container(
                child: Text(
                  "Faixa etária",
                  style: TextStyle(
                  fontSize: 19,
                  color: Colors.grey.shade600
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                    width: 120,
                    child: DropdownButtonFormField(       
                              items: dropdownValue.map(
                                (nivel) {
                                  return DropdownMenuItem(
                                    child: Text(nivel),
                                    value: nivel,
                                  );
                                },
                              ).toList(),
                              decoration: new InputDecoration(
                                alignLabelWithHint: true,
                                hintText: '16 - 19 anos',
                              ),
                              onChanged: (value) {
                                print('change');
                              },

                  ),
    ),
              ),
            ],
          ),
        ),
      );

    final container = Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100.0,
              child: Container(
                width: 300,
                height: 50,
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("informe.png"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            fullnameField,
            SizedBox(height: 20),
            cfpField,
            SizedBox(height: 20),
            emailField,
            SizedBox(height: 20),
            enderecoField,
            SizedBox(height: 20),
            phoneField,
            SizedBox(height: 10),
            idade,
            SizedBox(height: 20),
            marginSexoField,
            SizedBox(height: 20),
            registerButon,
            SizedBox(height: 20),
            voltar,
            SizedBox(height: 30),
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
              container,
            ],
          ),
        ),
      ),
    ));
  }
}
