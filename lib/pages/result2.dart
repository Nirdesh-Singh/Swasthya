import 'package:flutter/material.dart';
import 'package:swasthya/pages/symptoms.dart';

class Results2 extends StatefulWidget {
  const Results2({Key? key}) : super(key: key);

  @override
  State<Results2> createState() => _ResultsState();
}

class _ResultsState extends State<Results2> {
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
              Text("It seems that you have Delta variant of Coronavirus",
                  style: TextStyle(
                    color: Colors.green,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 30.0),
              Text("You must quarantine yourself for 15 days ",
                  style: TextStyle(
                    color: Colors.green,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 30.0),
              Text("After 15 days has passed, you must go for a Covid Test ",
                  style: TextStyle(
                    color: Colors.green,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(height: 30.0),
              Text(
                  "Following a Negative RT-PCR report, you can end your quarantine !!",
                  style: TextStyle(
                    color: Colors.green,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
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
