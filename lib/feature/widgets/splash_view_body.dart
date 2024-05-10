import 'package:bookly_app/assets.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/feature/home/presentation/view/home_view.dart';
import 'package:bookly_app/feature/widgets/sliding_animation_builder.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 4),
        SlidingAnimationBuilder(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 6), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(
        const HomeView(),
        transition: Transition.fade,
        duration: kTransitionDuration,
      );
    });
  }
}
