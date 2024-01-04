import 'package:flutter/material.dart';

import 'component/containerwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    String name = 'seymur';
    print(name);
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: width * 0.1,
          ),
          ContainerWidget(),
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          ),
          SizedBox(
            width: width * 0.1,
          ),
          Expanded(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text(name),
            ),
          ),
        ],
      ),
    );
  }
}
