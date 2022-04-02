import 'package:flutter/material.dart';

void main() {
  // Widgets app //Material app // Cupertino app
  runApp(MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.purple,
    ),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test App"),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          color: Colors.teal,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: const <Widget>[
            DrawerHeader(
              child: Text("Hi I am a drawer"),
              decoration: BoxDecoration(color: Colors.purple),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Simon Vargas"),
              subtitle: Text("Developer"),
              trailing: Icon(Icons.edit),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
