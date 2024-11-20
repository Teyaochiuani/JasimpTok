import 'package:floein_social_app/Screens/DisCover/DiscoverScreen.dart';
import 'package:floein_social_app/Screens/Home/HomeScreen.dart';
import 'package:floein_social_app/Screens/Inbox/InboxScreen.dart';
import 'package:floein_social_app/Screens/profile/ProfileScreen.dart';
import 'package:floein_social_app/components/enums.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
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
      height: 140,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 30, 30),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 8,
                  offset: Offset(0, 10),
                ),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Botón Home (funciona normalmente)
                    GestureDetector(
                      onTap: () {
                        if (!(route!.settings.name == "/home"))
                          Navigator.pushNamed(context, HomeScreen.routeName);
                      },
                      child: Container(
                        decoration: MenuState.home == selectedMenu
                            ? BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 8,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              )
                            : null,
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(18, 18, 18, 0),
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
                                child: Text(
                                  "Home",
                                  style: TextStyle(
                                      color: MenuState.home == selectedMenu
                                          ? Color(0xff651CE5)
                                          : Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Botón Discover (deshabilitado)
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Sección no disponible")),
                        );
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
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              )
                            : null,
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(18, 18, 18, 0),
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
                                child: Text(
                                  "Discover",
                                  style: TextStyle(
                                      color: MenuState.discover == selectedMenu
                                          ? Color(0xff651CE5)
                                          : Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Botón Inbox (deshabilitado)
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Sección no disponible")),
                        );
                      },
                      child: Container(
                        decoration: MenuState.inbox == selectedMenu
                            ? BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 8,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              )
                            : null,
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
                                child: MenuState.inbox == selectedMenu
                                    ? SvgPicture.asset(
                                        "assets/icons/mail.svg",
                                        color: Color(0xff651CE5),
                                      )
                                    : SvgPicture.asset(
                                        "assets/icons/mail-outline.svg",
                                      ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Container(
                                child: Text("Inbox",
                                    style: TextStyle(
                                        color: MenuState.inbox == selectedMenu
                                            ? Color(0xff651CE5)
                                            : Colors.black)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // Botón Profile (deshabilitado)
                    GestureDetector(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Sección no disponible")),
                        );
                      },
                      child: Container(
                        decoration: MenuState.profile == selectedMenu
                            ? BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 8,
                                    offset: Offset(0, 5),
                                  ),
                                ],
                              )
                            : null,
                        child: Column(
                          children: [
                            Container(
                              height: 45,
                              width: 60,
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(18, 18, 18, 0),
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
                                child: Text(
                                  "Profile",
                                  style: TextStyle(
                                      color: MenuState.profile == selectedMenu
                                          ? Color(0xff651CE5)
                                          : Colors.black),
                                ),
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
