import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/responsive_widget.dart';

import '../config/colors.dart';

class Header extends StatelessWidget {
  final String _name = "Nuttakit Kundum";
  final String _job = "Blockchain Engineer";
  final String _description =
      "Sawasdee Krub everyone!! (Hello from Thailand). Thank you for visiting my site, like I have mentioned before my name is Nuttakit Kundum. I love to meet new people and talk about the idea so feel free to chat with me and talk about yours.";
  @override
  Widget build(BuildContext context) => ResponsiveWidget(
        desktopScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I’m $_name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                _job,
                style: TextStyle(
                  color: AppColors.yellow,
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const SizedBox(height: 5),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  _description,
                  style: Theme.of(context).textTheme.bodyText2.copyWith(
                        color: Colors.grey[100],
                        fontSize: 17,
                      ),
                ),
              ),
              const SizedBox(height: 60),
            ],
          ),
        ),
        mobileScreen: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * .2,
          ),
          child: FittedBox(
            child: Column(
              children: [
                Text(
                  'I’m $_name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Text(
                  _job,
                  style: TextStyle(
                    color: AppColors.yellow,
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    _description,
                    style: Theme.of(context).textTheme.bodyText2.copyWith(
                          color: Colors.grey[100],
                          fontSize: 18,
                          height: 1.8,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ),
      );
}
