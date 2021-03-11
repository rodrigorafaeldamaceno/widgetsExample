import 'package:flutter/material.dart';

class ExpansileTileListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: <Widget>[
              Text(
                'Lista de expansileTile',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              ListView.separated(
                itemCount: 10,
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Theme(
                    data: ThemeData(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      title: Text('Titulo'),
                      childrenPadding: EdgeInsets.all(10),
                      children: [
                        ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Text('Elemento $index');
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
