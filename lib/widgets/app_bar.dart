// widgets/app_bar.dart

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 12, 12, 12),
      title: Row(
        children: [
          Image.asset('assets/images/utub.png',
              height: 50),
          Spacer(),
        
          Icon(Icons.notifications, color: const Color.fromARGB(255, 255, 254, 254)),
          SizedBox(width: 20),
          Icon(Icons.search, color: const Color.fromARGB(255, 247, 246, 246)),
          SizedBox(width: 20),
          
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}





