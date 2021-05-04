import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: EsScaffold(title: 'Flutter Najera'),
    ); // fin de material
  } // fin de widget
} // fin de MyApp

class EsScaffold extends StatefulWidget {
  EsScaffold({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _EsScaffoldState createState() => _EsScaffoldState();
} // fin de EsScaffold

class _EsScaffoldState extends State<EsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'assets/FlutterEnEspanol.png',
          width: 200.0,
        ),
      ), //fin de center
      drawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(
            size: 100.0,
          ),
          Text(
            'Drawer\nIzquierda',
            textAlign: TextAlign.center,
          ),
        ]), //fin de columna
      ), //fin del drawer
      endDrawer: Drawer(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          FlutterLogo(
            size: 100.0,
          ),
          Text(
            'Drawer\nDerecha',
            textAlign: TextAlign.center,
          ),
        ]), //fin de columna
      ), //fin del EndDrawer
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 200.0,
                child: Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
                  FlutterLogo(
                    size: 100.0,
                  ),
                  Text(
                    'Bottom Sheet',
                    textAlign: TextAlign.center,
                  ),
                ]),
              ); //Fin del contenedor
            }, //Constructor
          ); //Mostrar Hoja de botón Modal
        }, //Fin de OnPressed
      ), //Boton flotante
      bottomNavigationBar: BottomAppBar(
        color: Colors.amber,
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlutterLogo(
                size: 30.0,
              ),
              Text('Barra de Navegación de abajo')
            ],
          ),
        ), // fin del contenedor
      ), // fin del bottomNavigationBar
    ); // fin de Saffold
  } //fin de widget construir
} // fin de state<EsScaffold>
