import 'package:flutter/material.dart';
import 'dart:io';

class MainMenu extends StatelessWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Blood Eiffel',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              centerTitle: true,
              leading: IconButton(
                icon: const Icon(Icons.qr_code_scanner_sharp),
                iconSize: 40,
                onPressed: () {},
              ),
              title: const Text('BLOOD EIFFEL',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              actions: <Widget>[
                // bouton pour quitter l'application
                IconButton(
                  icon: const Icon(Icons.exit_to_app_rounded),
                  iconSize: 40,
                  onPressed: () => exit(0),
                ),
              ],
            ),
            body: Container(
              constraints: const BoxConstraints.expand(),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/wallpaper.jpg"),
                      fit: BoxFit.cover)),
              child: Center(
                  child:
                      Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Material(
                    color: Colors.redAccent,
                    elevation: 8,
                    borderRadius: BorderRadius.circular(30),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Ink.image(
                            image: const AssetImage('assets/hospital.jpeg'),
                            height: 210,
                            width: 320,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Hospital',
                            style: TextStyle(fontSize: 32, color: Colors.white),
                          ),
                          const SizedBox(height: 6)
                        ]))),
                const SizedBox(height: 40),
                Material(
                    color: Colors.redAccent,
                    elevation: 8,
                    borderRadius: BorderRadius.circular(30),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: InkWell(
                        splashColor: Colors.black26,
                        onTap: () {},
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          Ink.image(
                            image: const AssetImage('assets/labo.jpg'),
                            height: 210,
                            width: 320,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            'Laboratoire',
                            style: TextStyle(fontSize: 32, color: Colors.white),
                          ),
                          const SizedBox(height: 6)
                        ])))
              ])),
            )));
  }
}
