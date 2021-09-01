import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/modules/about/about_routes.dart';
import 'package:flutter_application_1/app/modules/home/view/home_view.dart';
import 'package:flutter_application_1/app/modules/home/view/message_view.dart';
import 'package:flutter_application_1/app/modules/home/view/more_view.dart';
import 'package:flutter_application_1/app/modules/home/view/notification_view.dart';
import 'package:flutter_application_1/constants/color.dart';
import 'package:flutter_application_1/utils/route_utils.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController =
        PageController(initialPage: _currentIndex, keepPage: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route Management"),
      ),
      body: PageView(
        controller: _pageController,
        children: [HomeView(), MessageView(), NotificationView(), MoreView()],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 150,
              color: AppColors.primaryColor,
            ),
            _drawerItem(Icons.book, "User Guide", () {}),
            _drawerItem(Icons.person, "Account", () {}),
            _drawerItem(Icons.help, "Help", () {}),
            _drawerItem(Icons.note, "Policy", () {}),
            _drawerItem(Icons.view_module, "About", () {
              AppRouteUtils.goPageInAboutModule(routeName: AboutRoutes.root);
            }),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            _pageController.animateToPage(index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn);
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text("Home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), title: Text("Message")),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), title: Text("Notification")),
            BottomNavigationBarItem(
                icon: Icon(Icons.more_horiz), title: Text("More"))
          ]),
    );
  }

  Widget _drawerItem(IconData icon, String title, Function onTap) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        icon,
        color: AppColors.primaryColor,
      ),
      title: Text(title),
    );
  }
}
