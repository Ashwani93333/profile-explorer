import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:profile_explorer/presentation/view/profileDetail_screen.dart';
import 'package:profile_explorer/presentation/viewModel/home_viewModel.dart';
import 'package:profile_explorer/presentation/viewModel/user_ViewModel.dart';
import 'package:profile_explorer/presentation/widgets/home_card.dart';

class HomeScreen extends StatelessWidget {
  final HomeViewModel controller = Get.put(HomeViewModel());
  final UserViewModel userViewModel = Get.put(UserViewModel());

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(body: FutureBuilder(
          future: userViewModel.getUsers(), builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(child: Text('No users found.'));
        }

        final users = snapshot.data!;

        return Obx(()=> ListView.builder(
          itemCount: users,
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(user.imageUrl)),
              title: Text(user.name),
            );
          },
        ));
      }),);
    });
  }

}
