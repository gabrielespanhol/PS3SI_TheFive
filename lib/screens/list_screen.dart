import 'package:flutter/material.dart';
import 'package:ps_thefive/models/courses_model.dart';
import 'package:ps_thefive/repository/courses_repository.dart';

class CoursesScreen extends StatefulWidget {
  @override
  _CoursesScreenState createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  @override
  Widget build(BuildContext context) {
    Scaffold scaffold = Scaffold(
      appBar: new PreferredSize(
        child: new Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
          width: double.infinity,
          height: 60,
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [const Color(0xFF38b6ff), const Color(0xFFffffff)],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.5, 0.0),
                stops: [0.0, 0.5],
                tileMode: TileMode.clamp),
            image: new DecorationImage(
              image: new AssetImage("cursos.png"),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 360),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ),
        preferredSize: new Size(
          MediaQuery.of(context).size.width,
          150.0,
        ),
      ),
      body: FutureBuilder<List<CoursesModel>>(
        future: CoursesRepository().findAllAsync(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return buildListView(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
    return scaffold;
  }


  ListView buildListView(List<CoursesModel> courses) {
    return ListView.builder(
      itemCount: courses == null ? 0 : courses.length,
      itemBuilder: (BuildContext ctx, int index) {
        return cardLocal(courses[index]);
      },
    );
  }

  Card cardLocal(CoursesModel course) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),

      ),
      elevation: 12.0,
      margin: new EdgeInsets.symmetric(
        horizontal: 7.0,
        vertical: 10.0,
      ),
      child: Container(
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
              borderRadius: BorderRadius.all(Radius.circular(70.0))
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 2.0,
          ),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0,top: 8),
            decoration: new BoxDecoration(
              border: new Border(
                right: new BorderSide(
                  width: 1.0,
                  color: Colors.black,
                ),
              ),
            ),
            child: Icon(
              Icons.beenhere,
              color: Colors.black,
            ),
          ),
          title: Text(
            course.nome,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Row(
            children: <Widget>[
              Expanded(
                flex: 0,
                child: Padding(
                    padding: EdgeInsets.only(left: 0.0, top: 3),
                    child: Icon(
                      Icons.access_time,
                      color: Colors.black,
                      size: 20,
                      
                    )),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: 3.0, top: 3),
                  child: Text(
                    course.duracao,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Expanded(child: Padding(
                padding: EdgeInsets.only(left: 3.0, top: 3),
                child: Text(
                  course.turma,
                  style: TextStyle(color: Colors.black),
                ),
              )),
            ],
          ),
          onTap: () {
            Navigator.pushNamed(
              context,
              "/detalhes",
              arguments: course,
            );
          },
        ),
      ),
    );
  }
}
