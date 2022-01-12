import 'package:cuisine/src/constants/colors.dart';
import 'package:cuisine/src/helpers/screen_helper.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'detail_viewmodel.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailViewModel>.reactive(
      viewModelBuilder: () => DetailViewModel(),
      builder: (
        BuildContext context,
        DetailViewModel model,
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
        );
      },
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Titre plat", style: TextStyle(fontSize: 32, color: mainColor)),
    );
  }
}

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          children: [
            Video(),
            TabMenu()
          ]  
        ),
      ),
    );
  }
}

class Video extends StatelessWidget {
  const Video({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
               width: double.infinity,
                  decoration: BoxDecoration(color: mainColor, 
              borderRadius: BorderRadius.circular(32),),
              child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: Icon(Icons.play_circle_outline_rounded, size: 64, color: Colors.white,),
              ),
    );
  }
}

class TabMenu extends StatelessWidget {
  const TabMenu({Key? key}) : super(key: key);

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
              )
            ],
          ),
          Expanded(
            child: const TabBarView(
              children: [DailyRecipeView(), FavoriteView()],
            ),
          ),
        ],
      ),
    );
  }
}

class DailyRecipeView extends StatelessWidget {
  const DailyRecipeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}

class FavoriteView extends StatelessWidget {
  const FavoriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: null,
    );
  }
}