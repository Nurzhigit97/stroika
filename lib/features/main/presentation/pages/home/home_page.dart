import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stroika/shared/gen/assets.gen.dart';
import 'package:stroika/shared/theme/colors/app_colors.dart';
import 'package:stroika/shared/widgets/app_search_widget.dart';
import 'package:stroika/shared/widgets/app_submit_button_widget.dart';
import 'package:stroika/shared/widgets/two_circle_widget.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const TwoCircleWidget(),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ListView(
            children: [
              const AppSearchWidget(),
              const SizedBox(height: 20),
              SizedBox(
                height: 137,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Assets.images.png.item1.image(),
                    ),
                    const SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Assets.images.png.item2.image(),
                    ),
                    const SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Assets.images.png.item3.image(),
                    ),
                    const SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Assets.images.png.item4.image(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              AppSubmitButtonWidget(
                title: 'СПРАВКИ',
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                bgColor: AppColors.mainColor,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              const Text(
                'Последние размещения',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),
                  children: [
                    CardWidget(
                      title: 'Название услуги, пример текста',
                      image: Assets.images.png.main1.path,
                      company: 'Компания',
                      rating: 3,
                    ),
                    CardWidget(
                      title: 'Название услуги, пример текста',
                      image: Assets.images.png.main2.path,
                      company: 'Компания',
                      rating: 2,
                    ),
                    CardWidget(
                      title: 'Название услуги, пример текста',
                      image: Assets.images.png.main3.path,
                      company: 'Компания',
                      rating: 3,
                    ),
                    CardWidget(
                      title: 'Название услуги, пример текста',
                      image: Assets.images.png.main4.path,
                      company: 'Компания',
                      rating: 5,
                    ),
                  ],
                ),
              )
            ],
          ),
        ))
      ],
    ));
  }
}

class CardWidget extends StatelessWidget {
  final String title;
  final String image;
  final String company;
  final double rating;
  const CardWidget({
    super.key,
    required this.title,
    required this.company,
    required this.rating,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image(image: AssetImage(image)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7),
            child: Column(
              children: [
                Text(
                  title,
                  maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      company,
                      maxLines: 1,
                    ),
                    Row(
                      children: [
                        Text('$rating'),
                        const Icon(
                          Icons.star,
                          color: AppColors.orange,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
