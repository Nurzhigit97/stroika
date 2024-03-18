import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stroika/shared/theme/colors/app_colors.dart';
import 'package:stroika/shared/widgets/app_input_widget.dart';
import 'package:stroika/shared/widgets/app_submit_button_widget.dart';

@RoutePage()
class SignUpExecutorPage extends StatelessWidget {
  const SignUpExecutorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const AppInputWidget(
            hintText: 'E-mail',
            filledColor: AppColors.inputColor,
          ),
          const SizedBox(height: 10),
          const AppInputWidget(
            hintText: 'Наименование компании',
            filledColor: AppColors.inputColor,
          ),
          const SizedBox(height: 10),
          const AppInputWidget(
            hintText: 'БИН',
            filledColor: AppColors.inputColor,
          ),
          const SizedBox(height: 10),
          const AppInputWidget(
            hintText: 'Пароль',
            filledColor: AppColors.inputColor,
          ),
          const SizedBox(height: 10),
          const AppInputWidget(
            hintText: 'Повторите пороль',
            filledColor: AppColors.inputColor,
          ),
          const SizedBox(height: 10),
          AppSubmitButtonWidget(
            title: 'Регистрация',
            bgColor: AppColors.mainColor,
            onTap: () {},
          ),
          const SizedBox(height: 70),
        ],
      ),
    );
  }
}
