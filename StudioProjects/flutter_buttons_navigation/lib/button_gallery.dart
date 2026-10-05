import 'package:flutter/material.dart';
import 'details_screen.dart';

class ButtonGallery extends StatelessWidget {
  const ButtonGallery({super.key});

  static const Color green = Color(0xFF2E7D20);
  static const Color lightGreen = Color(0xFFE8F1E3);
  static const Color background = Color(0xFFF8FAF5);

  void showMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 1),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,

      // APP BAR

      appBar: AppBar(
        backgroundColor: green,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,

        title: const Text(
          'Material Buttons',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),

        actions: [
          IconButton(
            tooltip: 'Logout',

            icon: const Icon(
              Icons.logout,
              size: 20,
            ),

            onPressed: () {
              Navigator.pushReplacementNamed(
                context,
                '/',
              );
            },
          ),
        ],
      ),

      // FLOATING ACTION BUTTON
      floatingActionButton: FloatingActionButton(
        backgroundColor: green,
        foregroundColor: Colors.white,

        onPressed: () {
          Navigator.pushNamed(
            context,
            '/details',
          );
        },

        child: const Icon(Icons.add),
      ),

      // BODY
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(
            18,
            16,
            18,
            90,
          ),

          child: Column(
            children: [

              // FIRST CHIP ROW
              Row(
                children: [
                  _filterChip(
                    '✓ Day',
                    selected: true,
                  ),

                  _filterChip('Week'),

                  _filterChip('Month'),

                  _filterChip('Year'),
                ],
              ),

              const SizedBox(height: 10),

              // SECOND CHIP ROW

              Row(
                children: [
                  _filterChip('XS'),
                  _filterChip('S'),
                  _filterChip('M'),

                  _filterChip(
                    'L',
                    selected: true,
                  ),

                  _filterChip(
                    'XL',
                    selected: true,
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // BUTTON GRID

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // LEFT COLUMN
                  Expanded(
                    child: Column(
                      children: [

                        // Elevated
                        _largeButton(
                          child: const Text(
                            'Elevated Button',
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                const DetailsScreen(),
                              ),
                            );
                          },
                        ),

                        const SizedBox(height: 8),

                        // Filled
                        _largeButton(
                          filled: true,
                          child: const Text(
                            'Filled Button',
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/profile',
                            );
                          },
                        ),

                        const SizedBox(height: 8),

                        // Tonal
                        _largeButton(
                          tonal: true,
                          child: const Text(
                            'Filled Tonal',
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/settings',
                            );
                          },
                        ),

                        const SizedBox(height: 8),

                        // Outlined
                        _largeButton(
                          outlined: true,
                          child: const Text(
                            'Outlined Button',
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              '/details',
                            );
                          },
                        ),

                        const SizedBox(height: 8),

                        // Text Button
                        SizedBox(
                          height: 42,
                          width: double.infinity,

                          child: TextButton(
                            onPressed: () {
                              showMessage(
                                context,
                                'Text Button pressed',
                              );
                            },

                            child: const Text(
                              'Text Button',
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 14),

                  // RIGHT COLUMN
                  Expanded(
                    child: Column(
                      children: [

                        // Add
                        _iconTextButton(
                          Icons.add,
                          'Add',
                              () {
                            Navigator.pushNamed(
                              context,
                              '/details',
                            );
                          },
                        ),

                        const SizedBox(height: 8),

                        // Attach
                        _iconTextButton(
                          Icons.attach_file,
                          'Attach',
                              () {
                            showMessage(
                              context,
                              'Attach pressed',
                            );
                          },
                        ),

                        const SizedBox(height: 8),

                        // Send
                        _iconTextButton(
                          Icons.send,
                          'Send',
                              () {
                            showMessage(
                              context,
                              'Send pressed',
                            );
                          },
                        ),

                        const SizedBox(height: 8),

                        // Like
                        _iconTextButton(
                          Icons.thumb_up_alt_outlined,
                          'Like',
                              () {
                            showMessage(
                              context,
                              'Like pressed',
                            );
                          },
                        ),

                        const SizedBox(height: 8),

                        // Favorite
                        SizedBox(
                          height: 42,
                          width: double.infinity,

                          child: TextButton.icon(
                            onPressed: () {
                              showMessage(
                                context,
                                'Favorite pressed',
                              );
                            },

                            icon: const Icon(
                              Icons.favorite,
                              size: 15,
                              color: green,
                            ),

                            label: const Text(
                              'Favorite',
                              style: TextStyle(
                                fontSize: 13,
                                color: green,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 22),

              // DIVIDER

              const Divider(
                thickness: 1,
                color: Color(0xFFE1E6DC),
              ),

              const SizedBox(height: 12),

              // ICON BUTTON ROW

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  _circleButton(
                    Icons.cloud_outlined,
                  ),

                  _circleButton(
                    Icons.cloud,
                    selected: true,
                  ),

                  _circleButton(
                    Icons.cloud_upload_outlined,
                  ),

                  _circleButton(
                    Icons.cloud_queue,
                  ),
                ],
              ),

              const SizedBox(height: 8),

              // SMALL ICON ACTIONS

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  IconButton(
                    onPressed: () {
                      showMessage(
                        context,
                        'Close pressed',
                      );
                    },

                    icon: const Icon(
                      Icons.close,
                      size: 18,
                    ),
                  ),

                  const SizedBox(width: 12),

                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },

                    icon: const Icon(
                      Icons.chevron_left,
                      size: 22,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              // APPROVE + SMALL ADD BUTTON

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton.icon(
                    onPressed: () {
                      showMessage(
                        context,
                        'Approved!',
                      );
                    },

                    icon: const Icon(
                      Icons.thumb_up,
                      size: 15,
                    ),

                    label: const Text(
                      'Approve',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: green,
                      foregroundColor: Colors.white,

                      minimumSize: const Size(
                        105,
                        40,
                      ),

                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                      ),

                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),

                  const SizedBox(width: 25),

                  SizedBox(
                    width: 42,
                    height: 42,

                    child: FloatingActionButton(
                      mini: true,

                      backgroundColor: green,
                      foregroundColor: Colors.white,

                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          '/details',
                        );
                      },

                      child: const Icon(
                        Icons.add,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 26),

              // CREATE ACCOUNT

              SizedBox(
                width: double.infinity,
                height: 50,

                child: ElevatedButton(
                  onPressed: () {
                    showMessage(
                      context,
                      'Create Account selected',
                    );
                  },

                  style: ElevatedButton.styleFrom(
                    backgroundColor: green,
                    foregroundColor: Colors.white,

                    elevation: 1,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),

                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


  // FILTER CHIP

  Widget _filterChip(
      String text, {
        bool selected = false,
      }) {
    return Expanded(
      child: Container(
        height: 34,

        margin: const EdgeInsets.only(
          right: 6,
        ),

        decoration: BoxDecoration(
          color: selected
              ? lightGreen
              : Colors.white,

          border: Border.all(
            color: const Color(0xFFD3DCCF),
          ),

          borderRadius: BorderRadius.circular(18),
        ),

        child: Center(
          child: Text(
            text,

            style: TextStyle(
              fontSize: 11,

              color: selected
                  ? green
                  : Colors.black87,

              fontWeight: selected
                  ? FontWeight.w600
                  : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }


  // LARGE BUTTON

  Widget _largeButton({
    required Widget child,
    required VoidCallback onPressed,
    bool filled = false,
    bool tonal = false,
    bool outlined = false,
  }) {
    final ButtonStyle style = ButtonStyle(
      minimumSize: WidgetStateProperty.all(
        const Size(double.infinity, 40),
      ),

      padding: WidgetStateProperty.all(
        const EdgeInsets.symmetric(
          horizontal: 8,
        ),
      ),

      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),

      textStyle: WidgetStateProperty.all(
        const TextStyle(
          fontSize: 12,
        ),
      ),
    );

    if (filled) {
      return SizedBox(
        width: double.infinity,
        height: 40,
        child: FilledButton(
          onPressed: onPressed,
          style: style.copyWith(
            backgroundColor: WidgetStateProperty.all(green),
            foregroundColor: WidgetStateProperty.all(
              Colors.white,
            ),
          ),
          child: child,
        ),
      );
    }

    if (tonal) {
      return SizedBox(
        width: double.infinity,
        height: 40,
        child: FilledButton.tonal(
          onPressed: onPressed,
          style: style,
          child: child,
        ),
      );
    }

    if (outlined) {
      return SizedBox(
        width: double.infinity,
        height: 40,
        child: OutlinedButton(
          onPressed: onPressed,
          style: style.copyWith(
            side: WidgetStateProperty.all(
              const BorderSide(
                color: Color(0xFFB8C7B0),
              ),
            ),
          ),
          child: child,
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      height: 40,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style.copyWith(
          backgroundColor: WidgetStateProperty.all(green),
          foregroundColor: WidgetStateProperty.all(
            Colors.white,
          ),
        ),
        child: child,
      ),
    );
  }

  // ICON + TEXT BUTTON

  Widget _iconTextButton(
      IconData icon,
      String text,
      VoidCallback onPressed,
      ) {
    return SizedBox(
      width: double.infinity,
      height: 40,

      child: ElevatedButton.icon(
        onPressed: onPressed,

        icon: Icon(
          icon,
          size: 15,
        ),

        label: Text(
          text,
          style: const TextStyle(
            fontSize: 12,
          ),
        ),

        style: ElevatedButton.styleFrom(
          backgroundColor: green,
          foregroundColor: Colors.white,

          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ),
    );
  }

  // CIRCLE ICON BUTTON

  Widget _circleButton(
      IconData icon, {
        bool selected = false,
      }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
      ),

      child: InkWell(
        borderRadius: BorderRadius.circular(25),

        onTap: () {},

        child: Container(
          width: 42,
          height: 42,

          decoration: BoxDecoration(
            shape: BoxShape.circle,

            color: selected
                ? green
                : Colors.white,

            border: Border.all(
              color: const Color(0xFFD2D9CE),
            ),
          ),

          child: Icon(
            icon,
            size: 19,

            color: selected
                ? Colors.white
                : Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}