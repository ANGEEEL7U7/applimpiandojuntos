// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:ljy/screens/blog.dart';
import 'package:ljy/screens/index.dart';

void main() {
  runApp(const MaterialApp(
    title: "Navigation Basics",
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: false, // set it to false
      
      appBar: AppBar(
        title: const Text('Login'),
      ),
       // set it to false
      body: SingleChildScrollView(
        child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
               //apply padding to some sides only
                      const Text("  Bienvenido",style: TextStyle(fontFamily: 'Product',fontWeight: FontWeight.w600,fontSize: 30,),
                          ),
                            const Text("  Limpiando Juntos Yucatan",style: TextStyle(fontFamily: 'Product',fontSize: 30,),
                              ),
                                Padding(padding: const EdgeInsets.all(30),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const <Widget>[
                                       Text('  Usuario',style: TextStyle(fontFamily: 'Product',fontSize: 20, color: Colors.grey,)
                                       
                                       ),
                                      TextField(
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: '  Nombre de usuario',
                              ),
                            )          
                          ],
                        ),
                      ),
                       Padding(padding: const EdgeInsets.only( left: 30, right: 30),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: const<Widget>[
                           Text('Contraseña',style: TextStyle(fontFamily: 'Product',fontSize: 20, color: Colors.grey),
                           ),
                           TextField(
                             obscureText: true,
                             decoration: InputDecoration(
                               border: OutlineInputBorder(),
                               hintText: 'Password',
                               
                             ),
                           ),
                         ],
                       ),
                      ),
                      Row(
                          children: <Widget>[
                             Padding(padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
                             child: RaisedButton(
                               child: const Text(
                                'iniciar',
                               ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const blog(),));
                              },
                            ),
                             ),
                             Padding(padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
                             child: RaisedButton(
                               child: const Text(
                                 'Registrarse'
                               ),
                               onPressed: (){
                                 Navigator.push(context, MaterialPageRoute(builder: (context) => const SecondRoute(),));
                               },
                               ),
                             ),
                          ],
                      ),
                    ],
                  ),
                ),
              );
            }
          }
