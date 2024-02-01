import 'package:flutter/material.dart';

class PageHome2 extends StatefulWidget {
  const PageHome2({super.key});

  @override
  State<PageHome2> createState() => _PageHome2State();
}

class _PageHome2State extends State<PageHome2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: _buildContainer(
                          color: Colors.green,
                          width: size.width,
                          height: size.width,
                        ),
                      ),
                      Expanded(
                        child: _buildContainer(
                          color: Colors.orange,
                          width: size.width,
                          height: size.width,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: _buildContainer(
                          color: Colors.green,
                          width: size.width,
                          height: size.width,
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: _buildContainer(
                                    color: Colors.orange,
                                    width: size.width,
                                    height: size.width,
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: _buildContainer(
                                    color: Colors.orange,
                                    width: size.width,
                                    height: size.width,
                                  ),
                                ),
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: _buildContainer(
                                    color: Colors.tealAccent,
                                    width: size.width,
                                    height: size.width,
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: _buildContainer(
                                    color: Colors.blueAccent.shade700,
                                    width: size.width,
                                    height: size.width,
                                  ),
                                ),
                              ],
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: _buildContainer(
                      color: Colors.pink,
                      width: size.width,
                      height: size.width,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: _buildContainer(
                      color: Colors.purpleAccent.shade700,
                      width: size.width,
                      height: size.width,
                    ),
                  ),
                ],
              )),
          Expanded(
              flex: 1,
              child: _buildContainer(
                color: Colors.blue,
                width: size.width,
                height: size.width,
              ))
        ],
      )),
    );
  }

  Widget _buildContainer({required Color color, required double width, required double height}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      color: color,
      width: width,
      height: height,
    );
  }
}
