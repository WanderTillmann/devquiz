import 'package:flutter/material.dart';

import 'package:devquiz/core/core.dart';
import 'package:devquiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentPage;
  final int lenght;

  const QuestionIndicatorWidget({
    Key? key,
    required this.currentPage,
    required this.lenght,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "Questao $currentPage",
                style: AppTextStyles.body,
              ),
              Text(
                "de $lenght",
                style: AppTextStyles.body,
              )
            ]),
            SizedBox(height: 16),
            ProgressIndicatorWidget(value: currentPage / lenght),
          ],
        ),
      ),
    );
  }
}
