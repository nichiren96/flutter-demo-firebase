import 'package:cuisine/src/constants/colors.dart';
import 'package:cuisine/src/helpers/navigation_helper.dart';
import 'package:cuisine/src/helpers/screen_helper.dart';
import 'package:cuisine/src/views/screens/home/calendar_view.dart';
import 'package:cuisine/src/views/screens/home/daily_recipe_view.dart';
import 'package:cuisine/src/views/screens/home/favorite_view.dart';
import 'package:cuisine/src/views/screens/home/home_viewmodel.dart';
import 'package:cuisine/src/views/screens/recherche/recherche_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (
          BuildContext context,
          HomeViewModel model,
          Widget? child,
        ) {
          return Scaffold(
            body: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: height(context) / 3,
                  flexibleSpace: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/cuisin.webp"))),
                  ),
                ),
                SliverFillRemaining(
                  child: Content(),
                  fillOverscroll: true,
                )
              ],
            ),
            bottomNavigationBar: Footer(),
          );
        });
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          const TabBar(
            labelColor: mainColor,
            indicatorColor: mainColor,
            tabs: [
              Tab(
                text: "Plat du jour",
              ),
              Tab(
                text: "Favoris",
              ),
              Tab(
                text: "Calendrier",
              ),
            ],
          ),
          Expanded(
            child: const TabBarView(
              children: [DailyRecipeView(), FavoriteView(), CalendarView()],
            ),
          ),
        ],
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
                onPressed: () => goto(context, RechercheView()),
      icon: Icon(Icons.search),
    ));
  }
}
