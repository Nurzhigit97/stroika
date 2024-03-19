import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stroika/shared/app_router/app_router.gr.dart';
import 'package:stroika/shared/theme/colors/app_colors.dart';

@RoutePage()
class MainNavigator extends StatefulWidget {
  const MainNavigator({
    super.key,
  });

  @override
  State<MainNavigator> createState() => _MainNavigatorState();
}

class _MainNavigatorState extends State<MainNavigator> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        FavouriteRoute(),
        FavouriteRoute(),
        ChatRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          onTap: (index) {
            tabsRouter.setActiveIndex(index);
          },
          currentIndex: tabsRouter.activeIndex,
          backgroundColor: AppColors.white,
          selectedItemColor: AppColors.mainColor,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: AppColors.mainColor,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              backgroundColor: AppColors.mainColor,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              backgroundColor: AppColors.mainColor,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message_rounded),
              backgroundColor: AppColors.mainColor,
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_4_outlined),
              label: '',
              backgroundColor: AppColors.mainColor,
            )
          ],
        );
      },
    );
  }
}
