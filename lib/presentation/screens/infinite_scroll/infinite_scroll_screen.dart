import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InifiniteScrollScreen extends StatefulWidget {
  static const name = "infinite_scroll_screen";

  const InifiniteScrollScreen({super.key});

  @override
  State<InifiniteScrollScreen> createState() => _InifiniteScrollScreenState();
}

class _InifiniteScrollScreenState extends State<InifiniteScrollScreen> {
  List<int> imageIDs = [1, 2, 3, 4, 5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  bool isMounted = true;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(
      () {
        if ((scrollController.position.pixels + 500) >=
            scrollController.position.maxScrollExtent) {
          loadNextPage();
        }
      },
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    isMounted = false;

    super.dispose();
  }

  Future loadNextPage() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));
    addFiveImages();

    isLoading = false;

    if (!isMounted) return;
    setState(() {});
  }

  void addFiveImages() {
    final lastId = imageIDs.last;

    imageIDs.addAll([1, 2, 3, 4, 5].map((id) => lastId + id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeBottom: true,
        removeTop: true,
        child: ListView.builder(
          controller: scrollController,
          itemCount: imageIDs.length,
          itemBuilder: (context, index) {
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
              placeholder: const AssetImage("assets/images/jar-loading.gif"),
              image: NetworkImage(
                  "https://picsum.photos/id/${imageIDs[index]}/500/300"),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon((Icons.arrow_back)),
      ),
    );
  }
}
