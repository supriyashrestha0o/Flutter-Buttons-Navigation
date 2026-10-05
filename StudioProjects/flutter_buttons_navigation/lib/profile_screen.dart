import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),

            child: Column(
              children: [

                // Profile icon
                const CircleAvatar(
                  radius: 60,

                  child: Icon(
                    Icons.person,
                    size: 65,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  'Supriya Shrestha',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'Student',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),

                const SizedBox(height: 25),

                // Profile information
                Card(
                  child: Column(
                    children: const [

                      ListTile(
                        leading: Icon(
                          Icons.person_outline,
                        ),

                        title: Text(
                          'Name',
                        ),

                        subtitle: Text(
                          'Supriya',
                        ),
                      ),

                      ListTile(
                        leading: Icon(
                          Icons.school_outlined,
                        ),

                        title: Text(
                          'Role',
                        ),

                        subtitle: Text(
                          'Student',
                        ),
                      ),

                      ListTile(
                        leading: Icon(
                          Icons.email_outlined,
                        ),

                        title: Text(
                          'Email',
                        ),

                        subtitle: Text(
                          'supriyashrestha@gmail.com',
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // Edit Profile
                FilledButton.icon(
                  onPressed: () {

                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Edit Profile selected',
                        ),
                      ),
                    );
                  },

                  icon: const Icon(
                    Icons.edit,
                  ),

                  label: const Text(
                    'Edit Profile',
                  ),
                ),

                const SizedBox(height: 8),

                // Back
                TextButton.icon(
                  onPressed: () {

                    Navigator.pop(context);
                  },

                  icon: const Icon(
                    Icons.arrow_back,
                  ),

                  label: const Text(
                    'Back',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}