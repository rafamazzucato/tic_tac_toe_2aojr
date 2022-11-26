import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tic_toc_toe/models/game.dart';
import 'package:tic_toc_toe/utils/constants.dart';

class GameWidget extends StatefulWidget {
  const GameWidget({super.key});

  @override
  State<GameWidget> createState() => _GameWidgetState();
}

class _GameWidgetState extends State<GameWidget> {

  Game? game;
  bool? minhaVez;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(700, 1400));

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: ScreenUtil().setWidth(550),
                      height: ScreenUtil().setHeight(550),
                      color: colorBackBlue1,
                    ),
                    Container(
                      width: ScreenUtil().setWidth(150),
                      height: ScreenUtil().setHeight(550),
                      color: colorBackBlue2,
                    ),
                  ],
                ),
                Container(
                  width: ScreenUtil().setWidth(700),
                  height: ScreenUtil().setHeight(850),
                  color: colorBackBlue3,
                ),
              ],
            ),
            Container(
              height: ScreenUtil().setHeight(1400),
              width: ScreenUtil().setWidth(700),
              child: Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  game == null ? 
                    (Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _buildButton("Criar", true),
                        const SizedBox(width: 10),
                        _buildButton("Entrar", false),
                      ])) 
                    : 
                      InkWell(
                        onLongPress: (() {
                          
                        }),
                        child: Text(
                          minhaVez == true ? "Sua vez!!" : "Aguarde sua vez!!",
                          style: textStyle36,)
                      )
                ])),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String label, bool isCreator) => SizedBox(
    width: ScreenUtil().setWidth(300),
    child: OutlinedButton(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Text(label, style: textStyle36)),
      onPressed: () {
        // Criar partida
      }),
  );
}
