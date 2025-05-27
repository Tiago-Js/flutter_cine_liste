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
                //container do topo do site
                child: Container(
                  height: 55,
                  color: Color(0xFFE50914),
                  child: Row(
                    //spaceBetween ele vai jogar cada item  pra um lado
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Container nome do site
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: IconButton(onPressed: () {
                            //ação do botão
                          }, icon: Icon(Icons.menu, color: Color(0xFFFFFFFF) ,)),
                        ),
                      ),
                      //Row com os butões
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //logo do site
                          Container(
                            child: Image.network("https://sdmntprsouthcentralus.oaiusercontent.com/files/00000000-8f90-61f7-9144-165d8abf3e79/raw?se=2025-05-27T19%3A02%3A55Z&sp=r&sv=2024-08-04&sr=b&scid=5f12b1a0-5fc0-5699-a4f2-fa0e3d079769&skoid=04233560-0ad7-493e-8bf0-1347c317d021&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2025-05-27T13%3A17%3A02Z&ske=2025-05-28T13%3A17%3A02Z&sks=b&skv=2024-08-04&sig=gzwhteFOZnNwOX%2BDz/9/3UGveQ7UUz6D7Sk1tFRFR9g%3D"
                            ),
                          ),
                        ],
                      ),
          
                      //avatar do usuario
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CircleAvatar(),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //COntainer principal do filme em destaque
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Flex(direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 500,
                  color: const Color(0xFF000000),
                  child: Row(
                    children: [
                      //container texto do filme
                       Expanded(
                        flex: 1,
                         child: Container(
                            color: Color.fromARGB(255, 219, 5, 5),
                         ),
                       ),
                       // container image do filme
                       Expanded(
                        flex: 3,
                         child: Container(
                              color: Color(0xFF000000),
                         ),
                       ),
                    ],
                  ),
                ),
              ),
            ],
            ),
          ),
          Flex(direction: Axis.horizontal,
          children: [
            ListView.builder(itemBuilder:  
            
            ),
          ],
          ),
        ],
      ),
    );
  }
}
