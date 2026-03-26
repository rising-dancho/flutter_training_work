import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    const String svgString = '''
    <svg width="48" height="54" viewBox="0 0 48 54" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path fill-rule="evenodd" clip-rule="evenodd" d="M46.0506 41.0566L24.676 53.0074C24.2979 53.2189 23.8373 53.2198 23.4584 53.0098L0.767011 40.4381C0.754667 40.4313 0.742468 40.4242 0.730417 40.417L0.121826 40.0807V39.3431V28.1527V15.5501C0.121826 14.5962 1.146 13.9927 1.98038 14.455L46.0463 38.8689C46.9047 39.3444 46.9071 40.5777 46.0506 41.0566Z" fill="#77CFF2"/>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M0.762767 13.0324L23.4569 0.343764C23.8365 0.131506 24.2991 0.131506 24.6788 0.343764L46.0551 12.2955C46.9106 12.7739 46.9094 14.0054 46.0529 14.4821L24.1829 26.6543L24.1945 26.6575L0.121826 40.0461V37.9166V19.9633V14.125C0.121826 13.6716 0.367004 13.2536 0.762767 13.0324Z" fill="#0FB2F2"/>
    </svg>
    ''';

    return Container(
      color: Colors.white,
      width: 80,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: SvgPicture.string(
              svgString,
              width: 47.22999954223633,
              height: 53.220001220703125,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Image.asset("icons/hamburger_icon.png"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Image.asset("icons/hub_icon.png"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Container(
              width: 24,
              height: 1,
              color: const Color(0xFFADADAD),
            ),
          ),
          // scrollable
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Image.asset("icons/clock_in_icon.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Image.asset("icons/employee_icon.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Image.asset("icons/employee_icon.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Image.asset("icons/employee_recruitment.png"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Image.asset("icons/employee_filestream.png"),
                ),
              ],
            ),
          ),

          // end
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Image.asset("icons/apps.png"),
          ),
        ],
      ),
    );
  }
}
