import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stroika/features/auth/presentation/pages/sign_up/sign_up_executor_page.dart';
import 'package:stroika/features/auth/presentation/pages/sign_up/sign_up_order_page.dart';
import 'package:stroika/shared/gen/assets.gen.dart';
import 'package:stroika/shared/theme/colors/app_colors.dart';
import 'package:stroika/shared/widgets/app_submit_button_widget.dart';
import 'package:stroika/shared/widgets/two_circle_widget.dart';

@RoutePage()
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this, initialIndex: 1);
  }

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
                      const Text(
                        'Регистрация',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      Expanded(
                        child: AppSubmitButtonWidget(
                          title: 'Заказчик',
                          textStyle: const TextStyle(
                            color: AppColors.black,
                            fontSize: 18.96,
                          ),
                          onTap: () => _tabController.animateTo(0),
                          borderRadius: BorderRadius.circular(90),
                          bgColor: AppColors.btnColor,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: AppSubmitButtonWidget(
                          title: 'Исполнитель',
                          textStyle: const TextStyle(
                            fontSize: 18.96,
                          ),
                          onTap: () => _tabController.animateTo(1),
                          bgColor: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(90),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: const <Widget>[
                        SignUpExecutorPage(),
                        SignUpOrderPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
