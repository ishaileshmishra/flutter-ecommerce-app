import 'package:flutter/cupertino.dart';
import 'package:flutter_ecommerce_app/screen/login/login_page.dart';
import 'package:get/get.dart';

Row buildActionBar() {
  return Row(
    children: [
      const Text(
        'Discover',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
      const Spacer(),
      GestureDetector(
        onTap: () => Get.to(const LoginScreen()),
        child: const Icon(
          CupertinoIcons.profile_circled,
          size: 45,
        ),
      ),
    ],
  );
}
