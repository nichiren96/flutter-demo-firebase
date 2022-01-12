import 'package:cuisine/src/helpers/screen_helper.dart';
import 'package:cuisine/src/themes/buttons.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class CarouselViewModel extends BaseViewModel {
  PageController _controller = PageController();
  PageController get controller => _controller;

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void selectIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  void next() {
    _selectedIndex++;
    _controller.animateToPage(_selectedIndex,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    notifyListeners();
  }

  void previous() {
    _selectedIndex--;
    _controller.animateToPage(_selectedIndex,
        duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    notifyListeners();
  }
}

class Carousel extends StatelessWidget {
  final List<Widget> pages;
  const Carousel({Key? key, required this.pages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CarouselViewModel>.reactive(
      viewModelBuilder: () => CarouselViewModel(),
      builder: (
        BuildContext context,
        CarouselViewModel model,
        Widget? child,
      ) {
        return Expanded(
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  onPageChanged: (int index) => model.selectIndex(index),
                  physics: NeverScrollableScrollPhysics(),
                  controller: model.controller,
                  children: pages,
                ),
              ),
              space(height: 16),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    if (model.selectedIndex > 0)
                      Expanded(
                        child:
                            Button.accent("Précédent", () => model.previous()),
                      ),
                    space(width: 16),
                    if (model.selectedIndex != pages.length - 1)
                      Expanded(
                        child: Button.accent("Suivant", () => model.next()),
                      ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
