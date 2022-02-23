// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Route"),),
        body:  SingleChildScrollView(
          child: Column(
            children: [  
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(padding:EdgeInsets.only(left: 15,top: 10,right: 30, bottom: 5),
                      child: Text('Unete A Limpiando Juntos Yucatan',
                        style: TextStyle(fontFamily: 'Product',fontWeight: FontWeight.w600,fontSize: 40)
                      ),
                    ),
                  ],
                  
                ),
                  ListView(
                    shrinkWrap: true,
                    
                    padding: const EdgeInsets.all(10),
                    children:[
                      Container(
                        width: 400,
                        child: Column(
                          children: const <Widget>[
                            TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                                
                                labelText: 'Usuario'
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Contraseña',
                                isDense: true,
                              ),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                labelText: 'Correo@ejemplo.com',
                                isDense: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                     Row(
                       children: <Widget>[
                         
                         RaisedButton(
                           onPressed: (){
                             Navigator.pop(context);
                          },
                        ),
                       ],
                     )
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      }