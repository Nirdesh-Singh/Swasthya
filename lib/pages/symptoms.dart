import 'package:flutter/material.dart';
import 'package:swasthya/pages/checkbox_state.dart';
import 'package:swasthya/pages/information.dart';
import 'package:swasthya/pages/result.dart';
import 'package:swasthya/pages/result2.dart';

class Symptoms extends StatefulWidget {
  const Symptoms({Key? key}) : super(key: key);

  @override
  State<Symptoms> createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  var omi = 0;
  var del = 0;
  var omicron = [
    'Nasal Congestion',
    'Runny Nose',
    'Generalized Body Ache',
    'Low Grade Fever',
    'Headache',
    'Joint Pain',
    'Diarrhoea',
    'Rashes on the Skin',
    'Discolouration of fingers or toes',
    'Red or Irritated eyes',
    'Night Sweats',
    'Backache',
    'Abdominal Cramps',
    'Loss of Apetite'
  ];

  var delta = [
    'Breathlessness',
    'High Fever',
    'Loss of smell or taste',
    'Shakes',
    'Chills',
    'Tiredness',
    'Sneezing'
  ];

  final notifications = [
    CheckBoxState(title: 'Cough'),
    CheckBoxState(title: 'Fatigue'),
    CheckBoxState(title: 'Nasal Congestion'),
    CheckBoxState(title: 'Runny Nose'),
    CheckBoxState(title: 'Generalized Body Ache'),
    CheckBoxState(title: 'Low Grade Fever'),
    CheckBoxState(title: 'Headache'),
    CheckBoxState(title: 'Joint Pain'),
    CheckBoxState(title: 'Sore Throat'),
    CheckBoxState(title: 'Diarrhoea'),
    CheckBoxState(title: 'Rashes on the Skin'),
    CheckBoxState(title: 'Discolouration of fingers or toes'),
    CheckBoxState(title: 'Red or Irritated eyes'),
    CheckBoxState(title: 'Night Sweats'),
    CheckBoxState(title: 'Backache'),
    CheckBoxState(title: 'Abdominal Cramps'),
    CheckBoxState(title: 'Sneezing'),
    CheckBoxState(title: 'Loss of Apetite'),
    CheckBoxState(title: 'Vomiting'),
    CheckBoxState(title: 'Nausea'),
    CheckBoxState(title: 'Scratchy Throat'),
    CheckBoxState(title: 'Breathlessness'),
    CheckBoxState(title: 'High Fever'),
    CheckBoxState(title: 'Loss of smell or taste'),
    CheckBoxState(title: 'Shakes'),
    CheckBoxState(title: 'Chills'),
    CheckBoxState(title: 'Tiredness'),
  ];
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
          title: const Text('Choose the Symptoms'),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: [
            ...notifications.map(buildSingleCheckbox).toList(),
            const SizedBox(width: 10, height: 10),
            Align(
              alignment: Alignment.bottomLeft,
              child: TextButton.icon(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Information())),
                label: const Text(
                  'Information',
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                icon: const Icon(Icons.info),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            if (del >= omi) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Results2()));
            } else {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Results1()));
            }
          },
          label: const Text('Results'),
          icon: const Icon(Icons.arrow_forward),
          backgroundColor: Colors.pink,
        ),
      ),
    );
  }

  Widget buildSingleCheckbox(CheckBoxState checkbox) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.red,
        value: checkbox.value,
        title: Text(
          checkbox.title,
          style: const TextStyle(fontSize: 20),
        ),
        onChanged: (value) => setState(() {
          checkbox.value = value!;
          if (checkbox.value && omicron.contains(checkbox.title)) {
            omi = omi + 1;
          }
          if (checkbox.value && delta.contains(checkbox.title)) {
            del = del + 1;
          }
          if (checkbox.value == false && omicron.contains(checkbox.title)) {
            omi = omi - 1;
          }
          if (checkbox.value == false && delta.contains(checkbox.title)) {
            del = del - 1;
          }
        }),
      );
}
