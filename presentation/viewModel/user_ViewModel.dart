import 'package:get/get.dart';
import 'package:profile_explorer/data/model/user_model.dart';
import '../../data/services/api_services.dart';

class UserViewModel extends GetxController {
  // var isLoading = true.obs;
  // var userList = <UserModel>[].obs;
  //
  // final ApiService apiService = ApiService();
  //
  // @override
  // void onInit() {
  //   fetchUsers();
  //   super.onInit();
  // }
  //
  // void fetchUsers() async {
  //   try {
  //     isLoading(true);
  //     var users = await apiService.fetchUsers();
  //     userList.assignAll(users);
  //   } finally {
  //     isLoading(false);
  //   }
  // }




  final _repository = ApiService();

  Future<List<UserModel>> getUsers() async {
  return await _repository.fetchUsers();

  }



}
