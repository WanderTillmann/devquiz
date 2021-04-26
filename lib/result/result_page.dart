import 'package:flutter/material.dart';

import 'package:devquiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:devquiz/core/core.dart';
import 'package:share_plus/share_plus.dart';

class ResultPage extends StatelessWidget {
  final String title;
  final int lenght;
  final int result;

  const ResultPage({
    Key? key,
    required this.title,
    required this.lenght,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.only(top: 250),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.trophy),
            Column(
              children: [
                Text(
                  "Parabéns!",
                  style: AppTextStyles.heading40,
                ),
                SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                      text: "Você Concluiu!",
                      style: AppTextStyles.body,
                      children: [
                        TextSpan(
                            text: "\n$title", style: AppTextStyles.bodyBold),
                        TextSpan(
                            text: "\n com $result de $lenght acertos!",
                            style: AppTextStyles.body),
                      ]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68),
                      child: NextButtonWidget.purple(
                          label: "Compartilhar",
                          onTap: () {
                            Share.share(
                                "DevQuiz Nlw 5 - Flutter : Resultado do quiz: $title\nObtive: ${result / lenght}% aproveitamento");
                          }),
                    )),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 68),
                      child: NextButtonWidget.white(
                          label: "Voltar ao inicio",
                          onTap: () {
                            Navigator.pop(context);
                          }),
                    )),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
