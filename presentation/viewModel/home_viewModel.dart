import 'package:get/get.dart';
import 'package:profile_explorer/data/model/user_model.dart';
import 'package:profile_explorer/presentation/view/profileDetail_screen.dart';

import '../widgets/home_card.dart';

class HomeViewModel extends GetxController {

  void navigate() {
    Get.to(ProfileDetailScreen());
  }
}
