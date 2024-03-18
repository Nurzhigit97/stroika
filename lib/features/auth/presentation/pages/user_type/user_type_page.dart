import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stroika/shared/app_router/app_router.gr.dart';
import 'package:stroika/shared/gen/assets.gen.dart';
import 'package:stroika/shared/theme/colors/app_colors.dart';
import 'package:stroika/shared/widgets/app_submit_button_widget.dart';

@RoutePage()
class UserTypePage extends StatelessWidget {
  const UserTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.png.backgroundImage.path),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 79),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.png.logo.image(),
                const SizedBox(height: 25),
                const Text(
                  'STROIKA',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                AppSubmitButtonWidget(
                  onTap: () {},
                  title: 'Вход',
                  bgColor: AppColors.mainColor,
                ),
                const SizedBox(height: 10),
                AppSubmitButtonWidget(
                  onTap: () {
                    context.router.push(const SignUpRoute());
                  },
                  title: 'Регистрация',
                  bgColor: AppColors.mainColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
