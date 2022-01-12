import 'package:cuisine/src/helpers/navigation_helper.dart';
import 'package:cuisine/src/helpers/screen_helper.dart';
import 'package:cuisine/src/themes/buttons.dart';
import 'package:cuisine/src/themes/headers.dart';
import 'package:cuisine/src/themes/inputs.dart';
//import 'package:cuisine/src/views/screens/home/home_view.dart';
import 'package:cuisine/src/views/screens/login/login_view.dart';
import 'package:cuisine/src/views/screens/question/question_view.dart';
import 'package:cuisine/src/views/screens/register/register_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      viewModelBuilder: () => RegisterViewModel(),
      builder: (
        BuildContext context,
        RegisterViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/plat.jpg"))),
                height: 250,
                width: double.infinity,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Header.title("Identifiez-vous !"),
                        space(height: 32),
                        Input(
                          label: "Votre Email",
                          placeholder: "Veuillez entrer votre email",
                        ),
                        Input(
                          label: " Votre mot de passe",
                          placeholder: "Veuillez entrer votre mot de passe",
                          isPassword: true,
                        ),
                        space(height: 16),
                        SizedBox(
                          width: width(context),
                          child: Button.primary("Créer un compte", () {
                            goto(context, QuestionView());
                          }),
                        ),
                        SizedBox(
                          child: Button.secondary(
                            "Se connecter avec facebook",
                            () {},
                            icon: Icons.facebook,
                          ),
                          width: width(context),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                style:
                                    TextButton.styleFrom(primary: Colors.black),
                                onPressed: () => goto(context, LoginView()),
                                child: Text("Cliquer ici si vous avez déjà un compte.")),
                            
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
