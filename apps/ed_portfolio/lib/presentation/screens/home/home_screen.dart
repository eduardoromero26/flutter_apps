import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF151515),
        drawer: Drawer(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.2,
          ),
        ),
        body: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              width: MediaQuery.of(context).size.width * 0.2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: const Icon(Icons.menu),
                          color: Colors.white),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          // a flag inside a icon button for english opr spanish
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.language_outlined),
                            color: Colors.white,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.light_mode_outlined),
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  const CircleAvatar(
                    radius: 120,
                    backgroundColor: Color(0xFF212121),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    'hello@eduardoromero.com',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    '(+52) 999-564-74-63',
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    'Based in Mexico City',
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    '© 2024, All rights reserved',
                    style: TextStyle(color: Colors.white30),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.facebook),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text('Work with me'))),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height - 24,
                          width: MediaQuery.of(context).size.width * 0.4 - 12,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32)),
                            color: Color(0xFF807E7E),
                          ),
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                  child: Text('Custom Software Solutions',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 72,
                                          fontWeight: FontWeight.bold))),
                              SizedBox(
                                height: 12,
                              ),
                              Flexible(
                                child: Text(
                                    'Software Engineer with big ideas',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Column(
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.6 - 18,
                              width:
                                  MediaQuery.of(context).size.width * 0.4 - 24,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32)),
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.4 - 18,
                              width:
                                  MediaQuery.of(context).size.width * 0.4 - 24,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(32)),
                                color: Color(0xFFF84438),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 1200,
                      width: MediaQuery.of(context).size.width * 0.8 - 24,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                      child: const Column(),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8 - 24,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 600,
                            width: MediaQuery.of(context).size.width * 0.8 - 24,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(32),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 200,
                            width: MediaQuery.of(context).size.width * 0.8 - 24,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * 0.8 - 24,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width * 0.8 - 24,
                      decoration: const BoxDecoration(
                        color: Color(0xFF333333),
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ],
        ));
  }
}
