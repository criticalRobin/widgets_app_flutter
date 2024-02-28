import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo("Busca la comida", "Esta es la mejor app de delivery del mundo",
      "assets/images/1.png"),
  SlideInfo("Entrega rápida", "No esperes horas por tu pedido",
      "assets/images/2.png"),
  SlideInfo(
      "Disfuta la comida", "Enamórate con el sabor", "assets/images/3.png"),
];

class AppTutorialScreen extends StatefulWidget {
  static const name = "app_tutorial_screen";

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  PageController pageviewController = PageController();
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();

    pageviewController.addListener(() {
      final page = pageviewController.page ?? 0;

      if (!isLastPage && page > slides.length - 1.5) {
        setState(() {
          isLastPage = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageviewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            children: slides
                .map((slidesData) => _Slide(
                    title: slidesData.title,
                    caption: slidesData.caption,
                    imageUrl: slidesData.imageUrl))
                .toList(),
          ),
          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              onPressed: () => context.pop(),
              child: const Text("Saltar"),
            ),
          ),
          isLastPage
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    duration: const Duration(seconds: 2),
                    child: FilledButton(
                      child: const Text("Comenzar"),
                      onPressed: () => context.pop(),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleTheme = Theme.of(context).textTheme.titleLarge;
    final captionTheme = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title, style: titleTheme),
            const SizedBox(height: 10),
            Text(caption, style: captionTheme)
          ],
        ),
      ),
    );
  }
}
