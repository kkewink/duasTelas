import 'package:duastelas/models/cadast_model.dart';
import 'package:duastelas/views/cadastro.dart';
import 'package:flutter/material.dart';


class ShowInfoScreen extends StatelessWidget {
  const ShowInfoScreen({
    super.key,
    required this.users,
  });

  final List<UserModel> users;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
                children: [
                  Container(
                  color: Color.fromARGB(255, 0, 255, 0),   
                    child: 
                    Text(users[0].name),
                  )
                ],
            ),
          ],
        ),
      ),
    );
  }
}