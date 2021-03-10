import 'package:flutter/material.dart';
import 'package:widgets/models/user_model.dart';
import 'package:widgets/pages/details_page.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<User> users = [
    User(
      name: 'Rodrigo',
      content:
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      dateTime: '08:22',
      image: 'assets/dart.jpeg',
      title: 'Olá, como vai?',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(users.first.name),
                leading: Hero(
                  tag: index,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(users.first.image),
                  ),
                ),
                subtitle: Text(users.first.title),
                trailing: Text(users.first.dateTime),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Detailspage(
                        heroTag: index,
                        user: users.first,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    ));
  }
}
