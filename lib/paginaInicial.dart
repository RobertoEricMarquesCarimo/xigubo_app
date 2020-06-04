import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "XIGUBO",
      debugShowCheckedModeBanner: false,
      color: Colors.red,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _home createState() => _home();
}

class _home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Xigubo"),
        actions: <Widget>[Icon(Icons.search), Icon(Icons.shopping_cart)],
      ),
      drawer: Drawer(
          child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 190,
              width: MediaQuery.of(context).size.width,
              color: Colors.red,
              child: Text("ola"),
            ),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Categorias"),
              trailing: Icon(Icons.keyboard_arrow_down),
            ),
            ListTile(
                leading: Icon(Icons.account_balance),
                title: Text("Anunciantes"),
                trailing: Icon(Icons.keyboard_arrow_down)),
            ListTile(
                leading: Icon(Icons.map),
                title: Text("Provincias"),
                trailing: Icon(Icons.keyboard_arrow_down)),
          ],
        ),
      )),
      body: Container(
        padding: EdgeInsets.all(5),
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 1,
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                    
                      Container(
                        width: 80,
                        child: Image(
                          image: NetworkImage(
                              'https://www.xigubo.co.mz/upload/5bd6f128556ce3.97890022.jpg'),
                        ),
                      ),
                      Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            child: Text(
                              "17%",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                          )),
                        
                      Positioned(
                          bottom: 0,
                          height: 120,
                          child: Opacity(
                            opacity: 0.70,
                            child:  Container(
                              color: Colors.white,
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Nome do produto ",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "23.99Mt",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "17%",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              )
                              ),)
                         
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
