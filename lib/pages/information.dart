import 'package:flutter/material.dart';
import 'package:swasthya/pages/symptoms.dart';
import 'package:url_launcher/url_launcher.dart';

class Information extends StatelessWidget {
  const Information({Key? key}) : super(key: key);

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
          title: const Text('Additional Information'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: Card(
          margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const Text(
                  'Emergency Contacts',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 20.0),
                TextButton.icon(
                  onPressed: _launchURL1,
                  label: const Text(''),
                  icon: const Icon(Icons.contacts),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'World Health Organization Updates',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 20.0),
                TextButton.icon(
                  onPressed: _launchURL2,
                  label: const Text(''),
                  icon: const Icon(Icons.update),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Precautions to be taken',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  ),
                ),
                const SizedBox(height: 20.0),
                TextButton.icon(
                  onPressed: _launchURL3,
                  label: const Text(''),
                  icon: const Icon(Icons.health_and_safety),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
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

  _launchURL1() async {
    const url = "https://www.mohfw.gov.in/pdf/coronvavirushelplinenumber.pdf";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url =
        "https://www.who.int/emergencies/diseases/novel-coronavirus-2019";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL3() async {
    const url =
        "https://www.tifr.res.in/~medical/guidelines/Important%20advice%20to%20Covid%20positive%20patients.pdf";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
