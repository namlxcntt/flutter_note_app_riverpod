import 'package:flutter/material.dart';
import 'package:flutter_note_app/data/model/bottom_bar_data/bottom_bar_data.dart';
import 'package:flutter_note_app/features/complete/complete_page.dart';
import 'package:flutter_note_app/features/home/home_page.dart';
import 'package:flutter_note_app/features/search/search_page.dart';
import 'package:flutter_note_app/features/settings/settings_page.dart';
import 'package:flutter_note_app/generated/assets.dart';
import 'package:flutter_note_app/routes/router.dart';
import 'package:flutter_note_app/theme/colors.dart';
import 'package:flutter_note_app/theme/themes.dart';
import 'package:flutter_note_app/utils/const.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

final currentIndexProvider = StateProvider.autoDispose((ref) => 0);

final controllerPageProvider =
    Provider.autoDispose((ref) => PageController(initialPage: 0));

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentIndexProvider);
    final controller = ref.watch(controllerPageProvider);
    final bottomBarData = ref.watch(bottomBarDataProvider);
    ref.listen(currentIndexProvider, (previous, next) {
      if (previous == next) return;
      controller.animateToPage(next,
          duration: const Duration(microseconds: 300), curve: Curves.bounceIn);
    });
    return Scaffold(
      floatingActionButton: Container(
        decoration: const BoxDecoration(
            color: AppColors.colorPrimaryBackground, shape: BoxShape.circle),
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          elevation: 5,
          onPressed: () {
            context.push(RouteDefine.create.getPath);
          },
          backgroundColor: AppColors.colorPrimaryBase,
          child: SvgPicture.asset(Assets.menuIcMenuAdd),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          onTap: (index) {
            if (index == 2) return;
            ref.read(currentIndexProvider.notifier).update((state) => index);
          },
          currentIndex: currentIndex,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedItemColor: AppColors.colorPrimaryBase,
          selectedLabelStyle: context.textXSRegular(),
          unselectedLabelStyle: context.textXSRegular(),
          items: bottomBarData.map((data) {
            bool isVisible = data.index != 2;
            return BottomNavigationBarItem(
              label: isVisible ? data.label : AppConstant.emptyString,
              activeIcon: Visibility(
                visible: isVisible,
                child: Padding(
                  padding: EdgeInsets.only(bottom: data.padding),
                  child: SvgPicture.asset(
                    data.activeIcon,
                    width: AppConstant.size24,
                    height: AppConstant.size24,
                  ),
                ),
              ),
              icon: Visibility(
                visible: isVisible,
                child: Container(
                  margin: const EdgeInsets.only(),
                  padding: EdgeInsets.only(bottom: data.padding),
                  child: SvgPicture.asset(
                    data.icon,
                    width: AppConstant.size24,
                    height: AppConstant.size24,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
      body: SafeArea(
        child: PageView.builder(
            controller: controller,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return const HomePage();
                case 1:
                  return const CompleteTaskPage();
                case 3:
                  return const SearchPage();
                case 4:
                  return const SettingPage();
              }
            }),
      ),
    );
  }
}
