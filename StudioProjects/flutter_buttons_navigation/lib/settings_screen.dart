import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  bool notifications = true;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),

          children: [

            const Icon(
              Icons.settings,
              size: 65,
            ),

            const SizedBox(height: 15),

            const Text(
              'Application Settings',
              textAlign: TextAlign.center,

              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            // Notifications
            Card(
              child: SwitchListTile(
                value: notifications,

                onChanged: (value) {

                  setState(() {
                    notifications = value;
                  });
                },

                title: const Text(
                  'Notifications',
                ),

                subtitle: const Text(
                  'Enable application notifications',
                ),

                secondary: const Icon(
                  Icons.notifications_outlined,
                ),
              ),
            ),

            // Dark Mode
            Card(
              child: SwitchListTile(
                value: darkMode,

                onChanged: (value) {

                  setState(() {
                    darkMode = value;
                  });
                },

                title: const Text(
                  'Dark Mode',
                ),

                subtitle: const Text(
                  'Demo setting',
                ),

                secondary: const Icon(
                  Icons.dark_mode_outlined,
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Back button
            FilledButton.icon(
              onPressed: () {

                Navigator.pop(context);
              },

              icon: const Icon(
                Icons.arrow_back,
              ),

              label: const Text(
                'Back to Gallery',
              ),
            ),
          ],
        ),
      ),
    );
  }
}