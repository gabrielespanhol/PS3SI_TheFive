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
                  padding: const EdgeInsets.only(top: 15),
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
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text(
                    "Valor: $valor",
                    style: TextStyle(
                    fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          new GradientAppBaar(""),
          topContent,
          descricao,
          detalhes,
        ],
      ),
    );
  }
}
