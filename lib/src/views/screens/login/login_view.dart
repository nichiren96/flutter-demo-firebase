import 'package:cuisine/src/helpers/navigation_helper.dart';
import 'package:cuisine/src/helpers/screen_helper.dart';
import 'package:cuisine/src/themes/buttons.dart';
import 'package:cuisine/src/themes/headers.dart';
import 'package:cuisine/src/themes/inputs.dart';
import 'package:cuisine/src/views/screens/home/home_view.dart';
import 'package:cuisine/src/views/screens/login/login_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (
        BuildContext context,
        LoginViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/cuisin.jpeg"))),
                height: 250,
                width: double.infinity,
              ),Expanded(
                child: Padding(
                  padding: EdgeInsets.all(32),
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Header.title("Bienvenue et bon apétit"),
                    space(height: 32),
                    Input(
                      label: "Votre Email",
                      placeholder: "Veuillez entrer votre email",
                    ),
                    Input(
                      label: "Votre mot de passe",
                      placeholder: "Veuillez entrer votre mot de passe",
                      isPassword: true,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(primary: Colors.black),
                        onPressed: () {},
                        child: Text("Mot de passe oublier")),
                    space(height: 16),
                    SizedBox(
                      width: width(context),
                      child: Button.primary("Se connecter", () {
                            goto(context, HomeView());
                          }),
                    ),
                    
                      ],
                    )
                  
                ),
              )
                ),
          
            
        ],
        ),
        );
      },
    );
  }
}
