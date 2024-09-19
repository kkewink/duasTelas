import 'package:flutter/material.dart';
import 'package:duastelas/models/cadast_model.dart';
import 'package:duastelas/views/infos.dart';



class Cadastro extends StatelessWidget {
  Cadastro({super.key});

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  int genero = 1;
  

  @override
  Widget build(BuildContext context) {
    List<UserModel> users = [];


    void dados() {
      users.add(UserModel(
        name: nameController.text,  
        email: emailController.text,
        pass: passController.text, 
        ));
    }
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro" ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: 
            TextField(
              keyboardType: TextInputType.number,
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome'
              ),
            ),
            ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email'
              ),
            ),
            ),
            Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: passController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha'
              ),
            ),
            ),           

                Text("Genero"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      value: 1 ,
                      groupValue: genero ,
                      onChanged: (value) {
                        setState(() {
                          genero = genero;
                        });
                      },
                    ),
                    SizedBox(width: 5.0,),
                    Text('Masculino'),

                    Radio(
                      value: 2 ,
                      groupValue: genero ,
                      onChanged: (value) {
                        setState(() {
                          genero = genero;
                        });
                      },
                    ),
                    SizedBox(width: 5.0,),
                    Text('Feminino'),
                  ],
                ),
             

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(onPressed: () {
                  dados();
                }, 
                child: Text("Salvar"),
                ),
                ElevatedButton(onPressed: () {
                  if(users.isNotEmpty) {

                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ShowInfoScreen(
                          users: users,
                       ),
                     ),
                    );
                  } else {
                    const snackBar = SnackBar(
                      content: Text("Precisamos de 1 cadastro no minimo"),
                    );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);                
                    }
                }, 
                child: Text("Ver"),
                ),
              ],
            )
        ],
        
      ),
    );
  }
  void setState(Null Function() param0) {}
}
