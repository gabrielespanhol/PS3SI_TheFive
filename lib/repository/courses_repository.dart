import 'package:ps_thefive/models/courses_model.dart';

import 'database.dart';

// ignore: camel_case_types
class CoursesRepository {
  Future<List<CoursesModel>> findAllAsync() async {
    var db = Database();
    await db.createDatabase();

    // ignore: deprecated_member_use
    List<CoursesModel> locais = new List<CoursesModel>();

    if (db.created) {
      // ignore: deprecated_member_use
      locais = new List<CoursesModel>();

      locais.add(
        new CoursesModel(
            id: 1,
            nome: 'UX',
            descricao: 'Dê os primeiros passos da sua jornada aprendendo as noções básicas do design thinking, design de interação e software de design de última geração. Depois de configurar suas ferramentas e completar os exercícios introdutórios, você estará pronto para as bases durante o bootcamp. Você criará sua primeira avaliação de usabilidade e redesenho do site, além de desenvolver sua sensibilidade de design em diversas atividades envolventes. Você também será apresentado ao básico de HTML e CSS, que é uma base essencial para a seção de implementação do projeto do bootcamp.',
            duracao: '40h',
            turma: '20 - 30 alunos',
            valor: '2.000,00',
            back: 'ux.png',
        ),    
      );

      locais.add(
        new CoursesModel(
            id: 2,
            nome: 'DEVOPS',
            descricao: 'O DevOps Bootcamp é um projeto de capacitação focado em inovação, automação e aplicação das melhores ferramentas de DevOps e Cloud Native no mercado, como: Kubernetes, Docker, Infra as a Code, Terraform, Ansible, Golang, Git, e muito mais.Treinamentos focados e na medida! Aqui criamos treinamentos personalizados de acordo com a necessidade de cada empresa.',
            duracao: '56h',
            turma: '20 - 35 alunos',
            valor: '2.200,00',
            back: 'de.png',
        ),    
      );


        locais.add(
        new CoursesModel(
            id: 3,
            nome: 'MACHINE LEARNING',
            descricao: 'O Bootcamp tem como objetivo abordar de forma intensiva os principais conceitos, algoritmos e ferramentas de aprendizado de máquina para a solução de problemas reais, habilitando o aluno para atuar profissionalmente na área.Domine as técnicas e ferramentas mais utilizadas no mercado, Adquira a experiência necessária ao mercado com aprendizado prático, Seja um dos pioneiros no trabalho com a Inteligência Artificial.',
            duracao: '300h',
            turma: '40 - 50 alunos',
            valor: '5.000,00',
            back: 'ml.png',
        ),    
      );

      locais.add(
        new CoursesModel(
            id: 4,
            nome: 'ARTIFICIAL INTELLIGENCE',
            descricao: 'Inteligência Artificial do Zero ao Deep Learning. Venha entrar no mundo de Inteligência Artificial e Machine Learning aprendendo como usar as principais ferramentas do mercado como o PyTorch. Isso tudo em um curso que visa contar o por trás dos algoritmos com estatística, matemática e muito aprendizado prático.',
            duracao: '730h',
            turma: '50 - 60 alunos',
            valor: '7.600,00',
            back: 'ai.png',
        ),    
      );

      locais.add(
        new CoursesModel(
            id: 5,
            nome: 'DESENVOLVIMENTO MOBILE',
            descricao: 'O objetivo do Bootcamp é apresentar fundamentos de programação com JavaScript, React, Java e Dart e 3 das principais tecnologias utilizadas para o desenvolvimento de aplicações móveis – Android Nativo, React Native e Flutter.',
            duracao: '148h',
            turma: '10 - 20 alunos',
            valor: '1.600,00',
            back: 'dm.png',
        ),    
      );

        locais.add(
        new CoursesModel(
            id: 6,
            nome: 'DESENVOLVIMENTO BACKEND',
            descricao: 'No bootcamp de Desenvolvedor Back-End são oferecidos desde conteúdos básicos como Lógica de Programação e Git, até Desenvolvimento para internet com a linguagem Python e seus frameworks Flask e Django, além dos cursos de MongoDB e Node, que também fazem parte da formação. Com o certificado de conclusão do bootcamp em Desenvolvedor Back-End você estará capacitado para concorrer às vagas do mercado e atender aos requisitos que as melhores empresas procuram em profissionais dessa área.',
            turma: '30 - 40 alunos',
            duracao: '130h',
            valor: '4.000,00',
            back: 'db.png',
        ),    
      );

      locais.add(
        new CoursesModel(
            id: 7,
            nome: 'DESENVOLVIMENTO FRONTEND',
            descricao: 'Para quem quer transformar sua carreira em pouco tempo, mergulhando no universo do desenvolvimento front-end.As ferramentas para desenvolvimento front-end mais relevantes para sua empregabilidade, que vem crescendo rapidamente e é baseado em uma comunidade internacional de desenvolvedores: HTML 5, CSS 3, JavaScript e ReactJS.',
            duracao: '720h',
            turma: '50 - 60 alunos',
            valor: '8.000,00',
            back: 'df.png',
        ),    
      );

        
      
    }

    return new Future.value(locais);
  }
}
