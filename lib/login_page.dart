import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ola_mundo/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State <LoginPage> createState() =>  LoginPageState();

}

class  LoginPageState extends State <LoginPage> {

  String email = '';
  String password = '';

  Widget _body(){

    return Column(
      children: [
        SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
      
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV7snO2GE4cGLYJz-6Dy5os70HbH6s1Xc0og&s'),
                    ),
      
                    Container(height: 10,),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                                      TextField(
                              onChanged: (text){
                                email = text;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              onChanged: (text) {
                                password = text;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                border: OutlineInputBorder(),
                              ),
                            ), 
                            SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {
                                if(email == 'lucianotssjr@gmail.com' && password == '123'){
                                  print('Correto!');
                                  Navigator.of(context).pushReplacementNamed(
                                    '/home'
                                  );
                                }
                    },
                    child: Container(
                      width: double.infinity,
                      child: Text('Entrar', 
                      textAlign: TextAlign.center,)),
                  )
                            ],
                        ),
                      ),
                    ),
                  
                  ],
              ),
            ),
          ),
        ),
      ]
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("Assets/images/background.png", fit: BoxFit.cover,)),
          ),
          Container(color: Colors.black.withValues(alpha: 0.0)),
          _body(),
        ],
      )
    );
  }
}