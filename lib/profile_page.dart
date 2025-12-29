import 'package:flutter/material.dart';
import 'social_button.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 40),

              // Profile Image
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  'https://i.imgur.com/BoN9kdC.png',
                ),
              ),

              const SizedBox(height: 16),

              // Name
              const Text(
                'Tamim Hossen',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              // Bio
              const Text(
                'Flutter Developer | CSE Student',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 30),

              // Social Media Buttons
              Wrap(
                spacing: 12,
                runSpacing: 12,
                alignment: WrapAlignment.center,
                children: const [
                  SocialButton(
                    label: 'Facebook',
                    icon: Icons.facebook,
                    url: 'https://facebook.com/yourprofile',
                  ),
                  SocialButton(
                    label: 'GitHub',
                    icon: Icons.code,
                    url: 'https://github.com/yourprofile',
                  ),
                  SocialButton(
                    label: 'LinkedIn',
                    icon: Icons.work,
                    url: 'https://linkedin.com/in/yourprofile',
                  ),
                  SocialButton(
                    label: 'Instagram',
                    icon: Icons.camera_alt,
                    url: 'https://instagram.com/yourprofile',
                  ),
                  SocialButton(
                    label: 'Twitter',
                    icon: Icons.alternate_email,
                    url: 'https://twitter.com/yourprofile',
                  ),
                  SocialButton(
                    label: 'YouTube',
                    icon: Icons.play_circle_fill,
                    url: 'https://youtube.com/@yourprofile',
                  ),
                  SocialButton(
                    label: 'Email',
                    icon: Icons.email,
                    url: 'mailto:youremail@gmail.com',
                  ),
                ],
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
