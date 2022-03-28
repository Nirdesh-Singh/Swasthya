import 'package:flutter/material.dart';
import 'package:swasthya/pages/checkbox_state.dart';
import 'package:swasthya/pages/result.dart';

class Symptoms extends StatefulWidget {
  const Symptoms({Key? key}) : super(key: key);

  @override
  State<Symptoms> createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  bool value = false;

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
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Results())),
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
        onChanged: (value) => setState(() => checkbox.value = value!),
      );
}
