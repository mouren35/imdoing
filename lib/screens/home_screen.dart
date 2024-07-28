import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final day = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: Colors.amber,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            const Icon(
                              Icons.calendar_today_outlined,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                '$day',
                                textHeightBehavior: const TextHeightBehavior(
                                  applyHeightToFirstAscent: false,
                                  applyHeightToLastDescent: false,
                                ),
                                strutStyle: const StrutStyle(
                                  forceStrutHeight: true,
                                  height: 1.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Text(
                            '人生第$day天',
                            // style: TextStyle(fontSize: 16),
                            // textHeightBehavior: TextHeightBehavior(
                            //   applyHeightToFirstAscent: false,
                            //   applyHeightToLastDescent: false,
                            // ),
                            // strutStyle: StrutStyle(
                            //   forceStrutHeight: true,
                            //   height: 1.0,
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('0'),
                      SizedBox(
                        width: 50,
                        child: LinearProgressIndicator(
                          value: 0.5,
                          color: Colors.amber,
                          backgroundColor: Colors.blue,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.green,
                    child: const Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        VerticalDivider(
                          color: Colors.black,
                          width: 1,
                          thickness: 1,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
