import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/ui/icon.dart';

import 'responsive_widget.dart';
import '../config/constants.dart';
import '../config/styles.dart';
import '../config/colors.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  String _counter = 'I\'m waiting...';
  void _incrementCounter() {
    setState(() {
      _counter = 'Thank You!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      desktopScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text('GET IN TOUCH', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildContactInfo(
                        'icons/email.png',
                        'Mail Us:',
                        AppConstants.mail,
                      ),
                      const SizedBox(height: 20),
                      _buildContactInfo(
                        'icons/call.png',
                        'Call Us:',
                        AppConstants.phone,
                      ),
                      const SizedBox(height: 20),
                      _buildContactInfo(
                        'icons/pin.png',
                        'Visit Us:',
                        AppConstants.location,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Give me a cup of coffee please :)',
                        style: TextStyle(
                          color: AppColors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '$_counter',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      InkWell(
                          onTap: _incrementCounter,
                          child: SizedBox(
                            height: 75,
                            width: 150,
                            child: Image.asset('icons/coffee.png'),
                          )),
                      Text('click at the coffee'),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 100,
        ),
        child: Column(
          children: [
            Text(
              'GET IN TOUCH',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildContactInfo(
                      'icons/email.png',
                      'Mail Us:',
                      AppConstants.mail,
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                      'icons/call.png',
                      'Call Us:',
                      AppConstants.phone,
                    ),
                    const SizedBox(height: 20),
                    _buildContactInfo(
                      'icons/pin.png',
                      'Visit Us:',
                      AppConstants.location,
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Give me a cup of coffees please :)',
                      style: TextStyle(
                        color: AppColors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InkWell(
                        onTap: _incrementCounter,
                        child: SizedBox(
                          height: 75,
                          width: 150,
                          child: Image.asset('icons/coffee.png'),
                        )),
                    Text(
                      'click at the coffee',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(String imagePath, String title, String content) {
    return FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppIcon(imagePath, color: AppColors.black.withOpacity(.7), size: 20),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                content,
                style: TextStyle(color: AppColors.black.withOpacity(.7)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
