import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: Container(
                  height: 55,
                  color: Color(0xFFE50914),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        color: const Color(0xFFE50914),
                        child: Row(
                          children: [
                            //butão  de filmes
                            TextButton.icon(
                              onPressed: () {
                                //ação do botão
                              },
                              icon: Icon(
                                Icons.movie_creation_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                              label: Text(
                                "Filmes",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                            ),

                            // butão de series
                            TextButton.icon(
                              onPressed: () {
                                //ação do butão
                              },
                              icon: Icon(
                                Icons.movie_creation_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                              label: Text(
                                "Séries",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                            ),

                            //butão de tv
                            TextButton.icon(
                              onPressed: () {
                                //ação do botão
                              },
                              icon: Icon(
                                Icons.tv,
                                size: 25,
                                color: Colors.white,
                              ),
                              label: Text(
                                "Tv",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 19,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
