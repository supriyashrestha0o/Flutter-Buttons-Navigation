import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              const SizedBox(height: 30),

              const Icon(
                Icons.info_outline_rounded,
                size: 75,
              ),

              const SizedBox(height: 20),

              const Text(
                'Details Screen',
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'This screen demonstrates Navigator.push() '
                    'and Navigator.pop().',
                textAlign: TextAlign.center,

                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 30),

              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20),

                  child: Column(
                    children: const [

                      ListTile(
                        leading: Icon(
                          Icons.navigation,
                        ),

                        title: Text(
                          'Navigator.push()',
                        ),

                        subtitle: Text(
                          'Opens this screen.',
                        ),
                      ),

                      ListTile(
                        leading: Icon(
                          Icons.arrow_back,
                        ),

                        title: Text(
                          'Navigator.pop()',
                        ),

                        subtitle: Text(
                          'Returns to the previous screen.',
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const Spacer(),

              // Navigator.pop()
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
      ),
    );
  }
}