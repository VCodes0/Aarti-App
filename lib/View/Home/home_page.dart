import 'package:flutter/material.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("God Aarti"),
      ),
      body: Stack(
        children: [
          Positioned(
            left: mq.width * 0.08,
            top: mq.height * 0.02,
            child: Image.asset("assets/नमस्कार,.png"),
          ),
          Positioned(
            top: mq.height * 0.1,
            left: mq.width * 0.15,
            child: Image.asset("assets/Get Strated.png"),
          ),
          Positioned(
            top: mq.height * 0.15,
            right: mq.width * 0.15,
            child: Image.asset("assets/Privacy.png"),
          ),
          Positioned(
            top: mq.height * 0.32,
            left: mq.width * 0.15,
            child: Image.asset("assets/Share.png"),
          ),
          Positioned(
            top: mq.height * 0.37,
            right: mq.width * 0.15,
            child: Image.asset("assets/Rate US.png"),
          ),
          Positioned(
            bottom: mq.height * 0.02,
            left: 0,
            right: 0,
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(mq.height * 0.03),
                child: SizedBox(
                  width: double.infinity,
                  height: mq.height * 0.24,
                  child: Image.asset("assets/Bottom.png", fit: BoxFit.cover),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
