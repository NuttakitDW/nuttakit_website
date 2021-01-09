import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'responsive_widget.dart';
import '../config/constants.dart';

import '../config/styles.dart';
import '../config/colors.dart';

class WorkingProcess extends StatelessWidget {
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
            Text('WORK EXPERIENCE', style: AppStyles.title),
            Container(width: 100, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: __buildHub(
                      context,
                      '',
                      'works/hub.png',
                      'Project Manager',
                      'Nurture talents and develops innovations that transforming how Thais live learn and play'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildRoostoo(
                      context,
                      '',
                      'works/roostoo_brand.png',
                      'Business Growth Strategist',
                      'Practice trading at no cost with real-time market data.'),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: __buildProcess(
                      context,
                      '',
                      'works/kulap.png',
                      'CEO Intern',
                      'Are you looking for the “Best price” way to Buy & Sell your digital assets? KULAP is always here for you.'),
                )
              ],
            ),
          ],
        ),
      ),
      mobileScreen: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .15,
          vertical: 50,
        ),
        child: Column(
          children: [
            Text(
              'WORK EXPERIENCE',
              style: AppStyles.title,
              textAlign: TextAlign.center,
            ),
            Container(width: 75, height: 2, color: AppColors.yellow),
            const SizedBox(height: 3),
            Container(width: 50, height: 2, color: AppColors.yellow),
            const SizedBox(height: 50),
            __buildHub(context, '', 'works/hub.png', 'Project Manager',
                'Nurture talents and develops innovations that transforming how Thais live learn and play'),
            const SizedBox(height: 10),
            __buildRoostoo(
                context,
                '',
                'works/roostoo_brand.png',
                'Business Growth Strategist',
                'Practice trading at no cost with real-time market data.'),
            const SizedBox(height: 10),
            __buildProcess(context, '', 'works/kulap.png', 'CEO Intern',
                'Are you looking for the “Best price” way to Buy & Sell your digital assets? KULAP is always here for you.'),
          ],
        ),
      ),
    );
  }

  Widget __buildProcess(BuildContext context, String title, String iconPath,
      String index, String description) {
    return InkWell(
      onTap: () {
        launch(AppConstants.kulap);
        },
    child: Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                index,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Divider(color: AppColors.greyLight),
            const SizedBox(height: 10),
            SizedBox(
              height: 75,
              width: 150,
              child: Image.asset(iconPath),
            ),
            Text(
              title,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ));
  }

  Widget __buildRoostoo(BuildContext context, String title, String iconPath,
      String index, String description) {
    return InkWell(
      onTap: () {
        launch(AppConstants.roostoo);
        },
      child:(Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                index,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            Divider(color: AppColors.greyLight),
            const SizedBox(height: 2),
            SizedBox(
              height: 100,
              width: 180,
              child: Image.asset(iconPath),
            ),
            Text(
              title,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    )));
  }

  Widget __buildHub(BuildContext context, String title, String iconPath,
      String index, String description) {
    return InkWell(
      onTap: () {
        launch(AppConstants.hub);
        },
      child: Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                index,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Divider(color: AppColors.greyLight),
            const SizedBox(height: 2),
            SizedBox(
              height: 100,
              width: 170,
              child: Image.asset(
                iconPath,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                color: AppColors.black,
                fontSize: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              description,
              style: TextStyle(
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    )
    );
  }

}
