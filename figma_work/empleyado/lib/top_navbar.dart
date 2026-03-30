import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopNavbar extends StatelessWidget {
  const TopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    const assetName = 'search.svg'; // dont put the assets/

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 26),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // TextField takes remaining width
          SizedBox(
            height: 36,
            width: 700,
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                hintText: 'Search',
                filled: true,
                fillColor: Colors.white,
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: SvgPicture.asset(assetName, width: 24, height: 24),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // const SizedBox(width: 16), // space between search and image
          Row(
            children: [
              Container(
                child: Row(
                  children: [
                    Image.asset("icons/Messaging.png"),
                    SizedBox(width: 8),
                    Image.asset("icons/Notifications.png"),
                    SizedBox(width: 8),
                    Image.asset("icons/Help.png"),
                  ],
                ),
              ),
              SizedBox(width: 24),
              // Profile image
              Image.asset(
                'icons/profile_icon.png',
                width: 56,
                height: 56,
                errorBuilder: (context, error, stackTrace) {
                  return const Text(
                    'IMAGE ERROR',
                    style: TextStyle(color: Colors.white),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
