import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ps_thefive/models/courses_model.dart';

// ignore: must_be_immutable
class Detalhes extends StatelessWidget {
  CoursesModel coursesModel;

  @override
  Widget build(BuildContext context) {
    coursesModel = ModalRoute.of(context).settings.arguments;

    final voltar = Material(
      child: Padding(
        padding: const EdgeInsets.only(right: 360, top: 30),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.grey.shade900,
          ),
        ),
      ),
    );

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

    

    final reta = Material(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 15,bottom: 30),
            child: Container(
              width: 380,
              height: 10,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [const Color(0xFF00b7ff), const Color(0xFFF648b1)],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(1.5, 0.0),
                      stops: [0.0, 0.5],
                      tileMode: TileMode.clamp),
                 
                  borderRadius: BorderRadius.circular(50)
                  ),
            ),
          )
        ],
      ),
    );

    final detalhes = Material(
      child: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.people_alt,
                  color: Colors.black,
                  size: 25,
                ),
                Text(
                  " $alunos",
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
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.black,
                            size: 25,
                          ),
                          Text(
                            " $duracao",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
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
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.green,
                                size: 25,
                              ),
                              Text(
                                " $valor",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 15, left: 100),
                        child: GestureDetector(
                            onTap: () =>

                              Navigator.pushNamed(
            context,
            "/inscricao",
          ),
                              
                            child: Container(
                              width: 145,
                              height: 40,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        const Color(0xFFFFFFFFF),
                                        const Color(0xFFF648b1)
                                      ],
                                      begin: const FractionalOffset(0.0, 0.0),
                                      end: const FractionalOffset(3.5, 0.0),
                                      stops: [0.0, 0.5],
                                      tileMode: TileMode.clamp),
                                  border: Border.all(
                                      width: 2.5, color: Colors.black),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Inscrição",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ))),
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
          voltar,
          topContent,
          reta,
          container,
          SizedBox(height: 30,)
        ],
      ),
    ));
  }
}
