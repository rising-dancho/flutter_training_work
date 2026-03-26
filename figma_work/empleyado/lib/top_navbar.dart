import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopNavbar extends StatelessWidget {
  const TopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    const String svgString = '''
    <svg width="26" height="24" viewBox="0 0 26 24" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M25.7067 18.2968L22.6099 15.1988C24.9271 12.1022 24.2953 7.71356 21.1988 5.39641C18.1022 3.07926 13.7136 3.71107 11.3964 6.80759C9.07926 9.90411 9.71107 14.2928 12.8076 16.6099C15.295 18.4713 18.7113 18.4713 21.1988 16.6099L24.2968 19.708C24.6862 20.0973 25.3174 20.0973 25.7067 19.708C26.096 19.3187 26.096 18.6875 25.7067 18.2982L25.7067 18.2968ZM17.029 16.012C14.277 16.012 12.046 13.781 12.046 11.029C12.046 8.27695 14.277 6.04601 17.029 6.04601C19.781 6.04601 22.012 8.27695 22.012 11.029C22.009 13.7798 19.7798 16.009 17.029 16.012Z" fill="#049DD9"/>
    </svg>
    ''';

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
                  child: SvgPicture.string(svgString, width: 24, height: 24),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(6),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          // const SizedBox(width: 16), // space between search and image
          Container(
            child: Row(
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
          ),
        ],
      ),
    );
  }
}
