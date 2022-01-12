import 'package:cuisine/src/helpers/navigation_helper.dart';
import 'package:cuisine/src/helpers/screen_helper.dart';
import 'package:cuisine/src/themes/headers.dart';
import 'package:cuisine/src/themes/inputs.dart';
import 'package:cuisine/src/views/screens/login/login_view.dart';
import 'package:cuisine/src/views/screens/question/question_viewmodel.dart';
import 'package:cuisine/src/views/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<QuestionViewModel>.reactive(
      viewModelBuilder: () => QuestionViewModel(),
      builder: (
        BuildContext context,
        QuestionViewModel model,
        Widget? child,
      ) {
        const pages = [Allergie(), Disease(), Regime(), Fady()];
        return Scaffold(
          body: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(primary: Colors.black),
                        onPressed: () => goto(context, LoginView()),
                        child: Text("Log in"))
                  ],
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/pizza.jpeg"))),
                height: 250,
                width: double.infinity,
              ),
              Carousel(pages: pages)
            ],
          ),
        );
      },
    );
  }
}

class Allergie extends StatelessWidget {
  const Allergie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Header.title("De quoi vous êtes allergique?"),
              space(height: 16),
              Input(
                label: "Votre réponse",
                placeholder: "Veuillez mettre votre reponse ici",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Disease extends StatelessWidget {
  const Disease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.all(32),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Header.title("Est-ce que vous avez une maladie ?"),
                  space(height: 16),
                  Input(
                    label: "Votre réponse",
                    placeholder: "Veuillez mettre votre reponse ici",
                  ),
                ],
              ),
            )));
  }
}

class Regime extends StatelessWidget {
  const Regime({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.all(32),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Header.title(
                      "Qu'est-ce que vous suivez comme regime alimentaire?"),
                  space(height: 16),
                  Input(
                    label: "Votre réponse",
                    placeholder: "Veuillez mettre votre reponse ici",
                  ),
                ],
              ),
            )));
  }
}

class Fady extends StatelessWidget {
  const Fady({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Header.title(
              "Decrivez tous les nourritures que vous ne devez pas manger?"),
          space(height: 16),
          Input(
            label: "Votre réponse",
            placeholder: "Veuillez mettre votre reponse ici",
          ),
        ],
      ),
    );
  }
}
