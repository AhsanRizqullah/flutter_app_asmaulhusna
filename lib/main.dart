import 'package:flutter/material.dart';
import 'package:flutter_app_asmaulhusna/list_public.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: asmaArab.length,
          itemBuilder: (BuildContext context, int index) {
            final AsmaArab = asmaArab[index].toString();
            final AsmaArti = asmaArti[index].toString();
            return Container(
              height: 140,
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                child: Stack(
                  children: <Widget>[
                    Container(
                      child: backgroundImage(),
                    ),
                    Container(
                      child: topContent(AsmaArab,AsmaArti),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
