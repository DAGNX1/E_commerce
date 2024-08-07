import 'package:flutter/material.dart';

import '../../../../../config/routes/routes.dart';
import '../../../../../core/utils/cache_helper.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                CacheHelper.removeData("User");
                Navigator.pushNamedAndRemoveUntil(
                    context, Routes.login, (route) => false);
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
