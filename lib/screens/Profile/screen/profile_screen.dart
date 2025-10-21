import 'package:collaboration_list/utils_/widgets/custom_profile_button.dart';
import 'package:collaboration_list/utils_/widgets/custom_text_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils_/app_color.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 25),
                const Text(
                  "Profile",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [
                        AppColor.maincolor,
                        AppColor.maincolor.withOpacity(0.7),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.maincolor.withOpacity(0.3),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: const Icon(Icons.person, color: Colors.white, size: 70),
                ),
                const SizedBox(height: 15),
                const Text(
                  "Username",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 25),
                CustomProfileButton(
                  icon: Icons.notifications,
                  buttonText: "Notifications",
                  backgroundColor: Color(0xffbfffea),
                  onTap: () {},
                ),
                CustomProfileButton(
                  icon: Icons.palette_outlined,
                  buttonText: "Appearance",
                  backgroundColor: Color(0xffcfc5fd),
                  onTap: () {},
                ),
                CustomProfileButton(
                  icon: Icons.language,
                  buttonText: "Language",
                  backgroundColor: Color(0xffddf270),
                  onTap: () {},
                ),
                CustomProfileButton(
                  icon: Icons.question_mark_outlined,
                  buttonText: "Help",
                  backgroundColor: Color(0xffdec5fd),
                  onTap: () {},
                ),
                CustomProfileButton(
                  icon: CupertinoIcons.exclamationmark,
                  buttonText: "About",
                  backgroundColor: Colors.pinkAccent.withOpacity(0.15),
                  onTap: () {},
                ),
                CustomButton(
                  buttonColor: Colors.red.withOpacity(0.85),
                  textColor: AppColor.whiteColor,
                  onTap: () {},
                  buttonText: "Log Out",
                  width: double.infinity,
                  height: 50,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
