import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frahto/ui/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class InitScreen extends StatelessWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mqocsh = MediaQuery.of(context).size.height;
    var mqocsw = MediaQuery.of(context).size.width;

    return Scaffold(
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
                        Style.mainColor,
                      ),
                    ),
                    Text(
                      'Крупнейший агрегатор перевозчиков',
                      maxLines: 5,
                      textAlign: TextAlign.center,
                      style: Style().textStyle(
                        32,
                        FontWeight.w700,
                        Color(0xff131214),
                      ),
                    ),
                    FilledButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Style.mainColor),
                        fixedSize: MaterialStateProperty.all(
                            Size.fromWidth(MediaQuery.of(context).size.width)),
                      ),
                      onPressed: () {},
                      child: Container(
                        child: Text(
                          'Начать',
                          maxLines: 5,
                          style: Style().textStyle(
                            16,
                            FontWeight.w500,
                            Colors.white,
                          ),
                        ),
                      ),
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
    );
  }
}
