import 'package:flutter/material.dart';

class HealthDetails extends StatefulWidget {
  const HealthDetails({Key? key}) : super(key: key);

  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<HealthDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HealthDetails"),
      ),
      body: Container(
        child: Text("HealthDetails"),
      ),
    );
  }
}
