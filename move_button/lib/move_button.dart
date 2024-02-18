import 'package:flutter/material.dart';

class Movebutton extends StatefulWidget {
  const Movebutton({super.key});

  @override
  State<Movebutton> createState() => _MovebuttonState();
}

class _MovebuttonState extends State<Movebutton> {
  MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.start;
  List<int> move = [1, 2, 3, 4, 5];
  late int index = 0;
  bool disabledMouseCursor = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          mainAxisAlignment: mainAxisAlignment,
          children: [
            ElevatedButton(
              onPressed: onClick,
              child: const Text('Move by click!'),
            ),
          ],
        ),
      ),
    );
  }

  void onClick() {
    index++;
    switch (index) {
      case 1:
        crossAxisAlignment = CrossAxisAlignment.end;
        break;
      case 2:
        mainAxisAlignment = MainAxisAlignment.end;
        break;
      case 3:
        crossAxisAlignment = CrossAxisAlignment.start;
        mainAxisAlignment = MainAxisAlignment.end;
        break;
      case 4:
        crossAxisAlignment = CrossAxisAlignment.start;
        mainAxisAlignment = MainAxisAlignment.start;
        break;
      case 5:
        crossAxisAlignment = CrossAxisAlignment.center;
        mainAxisAlignment = MainAxisAlignment.center;
        break;
      case 6:
        const ElevatedButton(
          onPressed: null,
          child: Text("Move by me!"),
        );
      default:
    }

    setState(() {});
  }
}
