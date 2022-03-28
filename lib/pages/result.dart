import 'package:flutter/material.dart';
import 'package:swasthya/pages/symptoms.dart';

class Results extends StatefulWidget {
  const Results({Key? key}) : super(key: key);

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.red,
        unselectedWidgetColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Results'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/covid19.jpg'),
                  radius: 100.0,
                  backgroundColor: Colors.white,
                ),
              ),
              SizedBox(height: 30.0),
              Divider(
                height: 15.0,
                color: Colors.tealAccent,
              ),
              SizedBox(height: 30.0),
              Text("It seems that you have Omicron variant of Coronavirus",
                  style: TextStyle(
                    color: Colors.green,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 8.0),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Symptoms())),
          label: const Text('Back'),
          icon: const Icon(Icons.arrow_back),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }
}
