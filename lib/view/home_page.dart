import 'package:flutter/material.dart';

import '../view_model/home_controller.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Align(
          child: Column(
            children: [
              Wrap(
                children: [
                  SizedBox(
                    height: 50,
                    child: InkWell(
                        onTap: () => controller.pegarCogumelo(),
                        child: Image.asset('assets/mushroom.png')),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 50,
                    child: InkWell(
                        onTap: () => controller.pegarflor(),
                        child: Image.asset('assets/flower.png')),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 50,
                    child: InkWell(
                        onTap: () => controller.pegarPena(),
                        child: Image.asset('assets/leaf.png')),
                  ),
                  const SizedBox(width: 20),
                  SizedBox(
                    height: 50,
                    child: InkWell(
                        onTap: () => controller.levarDano(),
                        child: Image.asset('assets/enemy.png')),
                  ),
                ],
              ),
              const SizedBox(height: 200),
              AnimatedBuilder(
                animation: controller,
                builder: (_, child) {
                  return SizedBox(
                    height: 150,
                    child: Image.asset(
                      controller.image!,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
