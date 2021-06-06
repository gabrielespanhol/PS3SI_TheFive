import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ps_thefive/components/app_bar.dart';
import 'package:ps_thefive/models/courses_model.dart';

// ignore: must_be_immutable
class Detalhes extends StatelessWidget {
  CoursesModel coursesModel;

  @override
  Widget build(BuildContext context) {
    coursesModel = ModalRoute.of(context).settings.arguments;

    String back = coursesModel.back;
    final topContent = Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(top: 0),
          height: 230,
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage("$back"),
            ),
          ),
        ),
      ],
    );

    final descricao = Material(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 0, right: 15, left: 15),
          child: Text(
            coursesModel.descricao,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ),
    );

    String duracao = coursesModel.duracao;
    String alunos = coursesModel.turma;
    String valor = coursesModel.valor;

    final detalhes = Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Turma: $alunos",
                  style: TextStyle(
                  fontSize: 18,
                ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Duração: $duracao",
                    style: TextStyle(
                    fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "Valor: $valor",
                        style: TextStyle(
                        fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                     Padding(
                      padding: const EdgeInsets.only(top: 15,left: 100),
                      child:  GestureDetector(
                           onTap: () =>  (
                            ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                              "Link para finalizar inscrição enviado",
                                textAlign: TextAlign.center,
                              ),
                                  duration: const Duration(milliseconds: 3000),
                                  backgroundColor: Colors.grey.shade700,
                                  behavior: SnackBarBehavior.floating,
                                  shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30))),
                                  width: 200,
                              ),
                            )

                        ),
                      
                      child: Container(

                          width: 100,
                          height: 40,
                           decoration: BoxDecoration( 
                                  gradient: LinearGradient(
                                  colors: [const Color(0xFFFFFFFFF), const Color(0xFFa3ddff)],
                                  begin: const FractionalOffset(0.0, 0.0),
                                  end: const FractionalOffset(3.5, 0.0),
                                  stops: [0.0, 0.5],
                                  tileMode: TileMode.clamp),
                                  border: Border.all(
                                      width: 2.5,
                                      color: Colors.lightBlue
                                ),
                            borderRadius: BorderRadius.circular(50)
                           ), 
                        child :Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                          "Inscrição",
                          style: TextStyle(
                          fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                      ),
                        ),
                      )
                      )
                    ),
                  ],
                ),
              ],
            ),
          ],
          
        ),
      ),
    );


     final container = Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            descricao,
            detalhes,

          ],
        ),
      ),
    );


    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          new GradientAppBaar(""),
          topContent,
          container,
        ],
      ),
      )
    );
  }
}
