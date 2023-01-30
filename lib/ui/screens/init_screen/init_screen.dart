import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frahto/ui/constants/constants.dart';
import 'package:frahto/ui/screens/auth_screen/auth_screen.dart';
import 'package:frahto/ui/widgets/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(24),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'FRAHTO',
                        maxLines: 5,
                        style: Style().textStyle(
                          20,
                          FontWeight.w700,
                          Style.mainPurple,
                        ),
                      ),
                      SWidgets().sb(0, 32),
                      Text(
                        'Крупнейший агрегатор перевозчиков',
                        maxLines: 5,
                        textAlign: TextAlign.center,
                        style: Style().textStyle(
                          32,
                          FontWeight.w700,
                          Style.mainBlack,
                        ),
                      ),
                      SWidgets().sb(0, 32),
                      SWidgets().ubutton(
                        context,
                        AuthScreen(),
                        'Продолжить',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(Assets.img + 'init_screen_image_png.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
