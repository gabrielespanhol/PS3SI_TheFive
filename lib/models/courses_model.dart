
import 'dart:ffi';

class CoursesModel {
  int id;
  String nome;
  String descricao;
  String duracao;
  String turma;
  String valor;
  String back;

  CoursesModel({
    this.id,
    this.nome,
    this.descricao,
    this.duracao,
    this.turma,
    this.valor,
    this.back,
  });
}
