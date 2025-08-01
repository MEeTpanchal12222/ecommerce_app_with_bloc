import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';
import '../screens/welcome/welcome_screen.dart';

class OnBoardingController extends GetxController {
  //Variables
  final userStorage = GetStorage(); // Use for local Storage
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  //Functions to trigger Skip, Next and onPageChange Events
  skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() =>
      controller.animateToPage(page: controller.currentPage + 1);

  animateToNextSlideWithLocalStorage() {
    if (controller.currentPage == 2) {
      userStorage.write('isFirstTime', false);
      Get.offAll(() => const WelcomeScreen());
    } else {
      controller.animateToPage(page: controller.currentPage + 1);
    }
  }

  onPageChangedCallback(int activePageIndex) =>
      currentPage.value = activePageIndex;

  //Three Onboarding Pages
  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: TImages.tOnBoardingImage1,
        title: CommonTexts.tOnBoardingTitle1,
        subTitle: CommonTexts.tOnBoardingSubTitle1,
        counterText: CommonTexts.tOnBoardingCounter1,
        bgColor: CommonColors.onBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: TImages.tOnBoardingImage2,
        title: CommonTexts.tOnBoardingTitle2,
        subTitle: CommonTexts.tOnBoardingSubTitle2,
        counterText: CommonTexts.tOnBoardingCounter2,
        bgColor: CommonColors.onBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: TImages.tOnBoardingImage3,
        title: CommonTexts.tOnBoardingTitle3,
        subTitle: CommonTexts.tOnBoardingSubTitle3,
        counterText: CommonTexts.tOnBoardingCounter3,
        bgColor: CommonColors.onBoardingPage3Color,
      ),
    ),
  ];
}
