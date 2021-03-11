import 'package:flutter/material.dart';
import 'package:widgets/models/user_model.dart';

class Detailspage extends StatelessWidget {
  final Object heroTag;
  final User user;

  const Detailspage({Key key, @required this.heroTag, @required this.user})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: heroTag,
              child: Center(
                child: Image.asset(
                  user.image,
                  height: MediaQuery.of(context).size.width * 0.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
