import 'package:flutter/material.dart';

class PantallaSeis extends StatefulWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  State<PantallaSeis> createState() => _PantallaSeisState();
}

class _PantallaSeisState extends State<PantallaSeis> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 6 Balderrama',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('CHECKBOX - pulse para marcar',
              style: TextStyle(
                fontSize: 25,
                color: Colors.orangeAccent,
              )),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Checkbox(
              value: isChecked,
              activeColor: Colors.orangeAccent,
              tristate: true,
              onChanged: (newBool) {
                setState(() {
                  isChecked = newBool;
                });
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar'),
            ),
          )
        ],
      ),
    );
  }
}
