import 'package:churchproapp/src/pages/page1.dart';
import 'package:churchproapp/src/pages/page2.dart';
import 'package:churchproapp/src/providers/navigation_provider.dart';
import 'package:churchproapp/src/services/user_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _Pages(), bottomNavigationBar: const _Navigation());
  }
}

class _Navigation extends StatelessWidget {
  const _Navigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //final navigationModel = Provider.of<_NavigationModel>(context);
    final navigationProvider = Provider.of<NavigationProvider>(context);

    return BottomNavigationBar(
        currentIndex: navigationProvider.curPage,
        onTap: (i) => navigationProvider.curPage = i,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Para ti'),
          BottomNavigationBarItem(
              icon: Icon(Icons.public), label: 'Encabezados')
        ]);
  }
}

class _Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NavigationProvider>(context);

    return PageView(
      controller: provider.pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const Page1(),
        const Page2(),

        //Page2()
      ],
    );
  }
}

class _NavigationModel with ChangeNotifier {
  int _curPage = 0;

  PageController _pageController = new PageController();

  int get curPage => _curPage;

  set curPage(int value) {
    _curPage = value;
    _pageController.animateToPage(value,
        duration: Duration(milliseconds: 250), curve: Curves.easeOut);
    notifyListeners();
  }

  PageController get pageController => _pageController;
}
