import 'package:flutter/material.dart';

class drawer extends StatelessWidget {
  const drawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      // Sidebar content
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            height: 137,
            child: const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'My profile',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.account_box_rounded,
              color: Colors.white,
              size: 40,
            ),
            title: const Text(
              'My Profile',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Handle home navigation
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.contacts_rounded,
              color: Colors.white,
              size: 40,
            ),
            title: const Text(
              'About us',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Handle home navigation
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.privacy_tip_sharp,
              color: Colors.white,
              size: 40,
            ),
            title: const Text(
              'Privacy Policy',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Handle home navigation
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.menu_book_outlined,
              color: Colors.white,
              size: 40,
            ),
            title: const Text(
              'terms and conditions',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Handle home navigation
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 40,
            ),
            title: const Text(
              'Settings',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Handle settings navigation
            },
          ),
          const SizedBox(
            height: 90,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: Colors.white,
              size: 40,
            ),
            title: const Text(
              'Logout',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                fontFamily: 'Poppins',
                color: Colors.white,
              ),
            ),
            onTap: () {
              // Handle settings navigation
            },
          ),
        ],
      ),
    );
  }
}
