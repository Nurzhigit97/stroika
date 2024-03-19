import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stroika/shared/gen/assets.gen.dart';
import 'package:stroika/shared/theme/colors/app_colors.dart';
import 'package:stroika/shared/widgets/app_submit_button_widget.dart';
import 'package:stroika/shared/widgets/two_circle_widget.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const TwoCircleWidget(),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    Assets.images.png.logo.image(width: 50),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Имя Фамилия Отчество',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            const Text('Заказчик'),
                            const SizedBox(width: 10),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Выход',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 1,
                                  color: AppColors.mainColor,
                                  decorationColor: AppColors.mainColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'О пользователи',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Редактировать',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              decorationThickness: 1,
                              color: AppColors.mainColor,
                              decorationColor: AppColors.mainColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Card(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(children: [
                              Icon(
                                Icons.phone,
                                color: AppColors.mainColor,
                              ),
                              SizedBox(width: 10),
                              Text('+ 7 708 584 54 76')
                            ]),
                            SizedBox(height: 10),
                            Row(children: [
                              Icon(
                                Icons.message,
                                color: AppColors.mainColor,
                              ),
                              SizedBox(width: 10),
                              Text('4empins@gmail.com')
                            ]),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                AppSubmitButtonWidget(
                  title: 'Написать сообщение',
                  onTap: () {},
                  bgColor: AppColors.mainColor,
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
