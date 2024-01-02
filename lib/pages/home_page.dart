import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// Pages
import './learn_flutter_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: PageView(
      children: [
        Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const LearnFlutterPage();
                  },
                ),
              );
            },
            child: const Text('Flutter'),
          ),
        ),
        const Center(
          child: Text('HomePage'),
        ),
      ],
    ));
  }
}
