import 'package:flutter/cupertino.dart';
import 'package:pathao_app/common_widgets/OnBoardingItem.dart';

import '../../gen/assets.gen.dart';

class OnBoardingViewModel extends ChangeNotifier{
  int currentPage = 0;

  List<Widget> getOnBoardingItems(){
    List<Widget> widgets = [];
    widgets.add(OnBoardingItem(title: "Hello!", subTitle: "Let's cook!", asset: Assets.images.onboarding1));
    widgets.add(OnBoardingItem(title: "Create!", subTitle: "Your own Recipes", asset: Assets.images.onboarding2));
    widgets.add(OnBoardingItem(title: "Challenge!", subTitle: "Win and get Gifts", asset: Assets.images.onboarding3));
    return widgets;
  }

  void setPage(int pageNo){
    currentPage = pageNo;
    notifyListeners();
  }

  void moveToNextPage(){
    if(currentPage == 2){

    }
  }

  String getActionText(){
    if(currentPage == 0){
      return "Let's Go";
    } else{
      return "Next";
    }
  }
}