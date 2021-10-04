import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:wtiau_blog/Screens/DisCover/discover_screen.dart';
import 'package:wtiau_blog/Screens/Home/home_screen.dart';
import 'package:wtiau_blog/Screens/Inbox/inbox_screen.dart';
import 'package:wtiau_blog/Screens/Profile/profile_screen.dart';
import 'package:wtiau_blog/components/enums.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    Route? route = ModalRoute.of(context);
    return Container(
      color: Colors.transparent,
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(100, 2, 100, 10),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: Offset(0, 10), // changes position of shadow
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: MenuState.home == selectedMenu
                          ? BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 8,
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ])
                          : null,
                      child: GestureDetector(
                        onTap: () {
                          if (!(route!.settings.name == "/home"))
                            Navigator.pushNamed(context, HomeScreen.routeName);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                child: MenuState.home == selectedMenu
                                    ? SvgPicture.asset(
                                        "assets/icons/home.svg",
                                        color: Color(0xff651CE5),
                                      )
                                    : SvgPicture.asset(
                                        "assets/icons/home-outline.svg",
                                      ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                // child: Text(
                                //   "خانه",
                                //   style: TextStyle(
                                //       color: MenuState.home == selectedMenu
                                //           ? Color(0xff651CE5)
                                //           : Colors.black),
                                // ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        if (!(route!.settings.name == "/discover"))
                          Navigator.pushNamed(context, Discover.routeName);
                      },
                      child: Container(
                        decoration: MenuState.discover == selectedMenu
                            ? BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.3),
                                      spreadRadius: 3,
                                      blurRadius: 8,
                                      offset: Offset(
                                          0, 5), // changes position of shadow
                                    ),
                                  ])
                            : null,
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                child: MenuState.discover == selectedMenu
                                    ? SvgPicture.asset(
                                        "assets/icons/discover.svg",
                                        color: Color(0xff651CE5),
                                      )
                                    : SvgPicture.asset(
                                        "assets/icons/discover-outline.svg",
                                      ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                // child: Text(
                                //   "Discover",
                                //   style: TextStyle(
                                //       color: MenuState.discover == selectedMenu
                                //           ? Color(0xff651CE5)
                                //           : Colors.black),
                                // ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Container(
                    //   decoration: MenuState.inbox == selectedMenu
                    //       ? BoxDecoration(
                    //           color: Colors.white,
                    //           borderRadius: BorderRadius.circular(15),
                    //           boxShadow: [
                    //               BoxShadow(
                    //                 color: Colors.grey.withOpacity(0.3),
                    //                 spreadRadius: 3,
                    //                 blurRadius: 8,
                    //                 offset: Offset(
                    //                     0, 5), // changes position of shadow
                    //               ),
                    //             ])
                    //       : null,
                    //   child: GestureDetector(
                    //     onTap: () {
                    //       if (!(route!.settings.name == "/inbox"))
                    //         Navigator.pushNamed(context, InboxScreen.routeName);
                    //     },
                    //     child: Column(
                    //       children: [
                    //         Container(
                    //           height: 45,
                    //           width: 60,
                    //           child: Padding(
                    //             padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                    //             child: MenuState.inbox == selectedMenu
                    //                 ? SvgPicture.asset(
                    //                     "assets/icons/mail.svg",
                    //                     color: Color(0xff651CE5),
                    //                   )
                    //                 : SvgPicture.asset(
                    //                     "assets/icons/mail-outline.svg",
                    //                   ),
                    //           ),
                    //         ),
                    //         Padding(
                    //           padding: const EdgeInsets.only(bottom: 5),
                    //           child: Container(
                    //             child: Text("Inbox",
                    //                 style: TextStyle(
                    //                     color: MenuState.inbox == selectedMenu
                    //                         ? Color(0xff651CE5)
                    //                         : Colors.black)),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Container(
                      decoration: MenuState.profile == selectedMenu
                          ? BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 8,
                                    offset: Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ])
                          : null,
                      child: GestureDetector(
                        onTap: () {
                          if (!(route!.settings.name == "/profile"))
                            Navigator.pushNamed(
                                context, ProfileScreen.routeName);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                                child: MenuState.profile == selectedMenu
                                    ? SvgPicture.asset(
                                        "assets/icons/profile.svg",
                                        color: Color(0xff651CE5),
                                      )
                                    : SvgPicture.asset(
                                        "assets/icons/profile-outline.svg",
                                      ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                // child: Text(
                                //   "پروفایل",
                                //   style: TextStyle(
                                //       color: MenuState.profile == selectedMenu
                                //           ? Color(0xff651CE5)
                                //           : Colors.black),
                                // ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
