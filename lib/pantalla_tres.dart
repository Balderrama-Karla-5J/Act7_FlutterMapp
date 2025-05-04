import 'package:flutter/material.dart';

class PantallaTres extends StatefulWidget {
  const PantallaTres({Key? key}) : super(key: key);

  @override
  State<PantallaTres> createState() => _PantallaTresState();
}

class _PantallaTresState extends State<PantallaTres> {
  double opacityLevel = 1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pantalla 3 Balderrama',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AnimatedOpacity(
                  opacity: opacityLevel,
                  duration: const Duration(seconds: 2),
                  child: const FlutterLogo(
                    size: 100,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Fade Logo'),
                  onPressed: () {
                    setState(
                      () => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0,
                    );
                  },
                ),
              ],
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
                child: const Text('Regresar')),
          )
        ],
      ),
    );
  }
}
