
import 'package:flutter/material.dart';
import 'package:picknpass/provider/user_provider.dart';
import 'package:provider/provider.dart';

import '../locator.dart';
import '../pages/models/user.model.dart';
import '../pages/profile.dart';
import '../pages/widgets/app_button.dart';
import '../pages/widgets/app_text_field.dart';
import '../services/camera.service.dart';

class SignInSheet extends StatelessWidget {
  SignInSheet({Key? key, required this.user}) : super(key: key);
  final User user;

  final _passwordController = TextEditingController();
  final _cameraService = locator<CameraService>();

  Future _signIn(context, user) async {
    if (user.password == _passwordController.text) {
      Provider.of<UserProvider>(context, listen: false).setCurrentUser(user);
      
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => Profile(
                    user.name,
                    imagePath: _cameraService.imagePath!,
                  )));
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return const AlertDialog(
            content: Text('Wrong password!'),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Text(
              'Welcome back, ${user.name}.',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Container(
            child: Column(
              children: [
                const SizedBox(height: 10),
                AppTextField(
                  controller: _passwordController,
                  labelText: "Password",
                  isPassword: true,
                ),
                const SizedBox(height: 10),
                const Divider(),
                const SizedBox(height: 10),
                AppButton(
                  text: 'LOGIN',
                  onPressed: () async {
                    _signIn(context, user);
                  },
                  icon: const Icon(
                    Icons.login,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
