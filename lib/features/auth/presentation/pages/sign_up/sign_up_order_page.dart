import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stroika/shared/gen/assets.gen.dart';
import 'package:stroika/shared/theme/colors/app_colors.dart';
import 'package:stroika/shared/widgets/app_input_widget.dart';
import 'package:stroika/shared/widgets/app_submit_button_widget.dart';

@RoutePage()
class SignUpOrderPage extends StatelessWidget {
  const SignUpOrderPage({super.key});

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
          const Row(
            children: [
              Expanded(child: Divider(color: Color(0xffE8ECF4), height: 1.5)),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Или регистрация',
                  style: TextStyle(
                    color: Color(0xff6A707C),
                    fontSize: 14,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w300,
                    height: 0,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              Expanded(child: Divider(color: Color(0xffE8ECF4), height: 1.5)),
            ],
          ),
          const SizedBox(height: 40),
          Center(
            child: Row(
              children: [
                Expanded(
                  child: _buildIconWithBorder(
                    icon: Assets.images.svg.google.svg(
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildIconWithBorder(
                    icon: Assets.images.svg.facebook.svg(
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: _buildIconWithBorder(
                    icon: Assets.images.svg.apple.svg(
                      width: 30,
                      height: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }

  Widget _buildIconWithBorder({required Widget icon}) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xffE8ECF4),
          width: 2,
        ),
      ),
      child: icon,
    );
  }
}
