import 'package:flutter/material.dart';
import 'package:ljy/screens/home.dart';
import 'package:ljy/screens/users.dart';

// ignore: camel_case_types
class blog extends StatefulWidget {
  const blog({Key? key}) : super(key: key);

  @override
  State<blog> createState() => _blogState();
}

// ignore: camel_case_types
class _blogState extends State<blog> {

  int _paginaActual = 0;

  List<Widget>  _paginas = [
     home(),
     users(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _paginas[_paginaActual],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            _paginaActual = index;
          });
        },
        currentIndex: _paginaActual,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'home'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.supervised_user_circle),
          label: "user"
          )
        ],
      ),
    );
  }
}



