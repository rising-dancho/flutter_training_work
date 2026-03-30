import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    const empleyadoLogo = 'empleyado_logo.svg'; // dont put the assets/

    return Container(
      color: Colors.white,
      width: 80,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: SvgPicture.asset(
              empleyadoLogo,
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
