import 'package:flutter/material.dart';
import 'package:fridayday5/widget/loginform.dart';

class day5task extends StatefulWidget {
  const day5task({super.key});

  @override
  State<day5task> createState() => _day5taskState();
}

class _day5taskState extends State<day5task> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                color: Colors.blueAccent,
                height: MediaQuery.of(context).size.height * .55,
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 36),
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 16),
                    child: Column(
                      children: [
                        Text('Get Started',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                        Text('Enter details to login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Container(
                    height: 260,
                    padding: EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 8,
                              spreadRadius: 4,
                              blurStyle: BlurStyle.normal)
                        ]),
                    child: loginform(),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
