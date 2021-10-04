
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wtiau_blog/Screens/Home/home_card.dart';
import 'dart:ui';

import 'package:wtiau_blog/components/data.dart';
import 'package:wtiau_blog/components/enums.dart';
import 'package:wtiau_blog/components/navbar_custom.dart';
import 'package:wtiau_blog/models/post.dart';
import 'package:wtiau_blog/services/post_services.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomeScreen> {



  final List<Post> _posts = [];
  String _currentPage = "https://wtiaublog.pythonanywhere.com/blog/";
  bool _viewStream = true;
  bool _isLoading = true;
  ScrollController _listScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _getPosts();

    _listScrollController.addListener(() {
      double maxScroll = _listScrollController.position.maxScrollExtent;
      double currentScroll = _listScrollController.position.pixels;

      if (maxScroll - currentScroll <=200) {
        if(! _isLoading) {
          _getPosts(page: _currentPage);
        }
      }
    });
  }

  _getPosts({String page: "https://wtiaublog.pythonanywhere.com/blog/", bool refresh : false}) async{

    setState(() {
      _isLoading = true;
    });

    var response = await PostService.getPost(page);

    setState(() {
      if(refresh) _posts.clear();
      _posts.addAll(response['posts']);
      if (response['next_page'] != null){
        _currentPage = response['next_page'];
      }
      _isLoading = false;
    });

  }
    
   Widget loadingView(){
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget listIsEmpty(){
    return const Center(
      child: Text('محصولی برای نمایش وجود ندارد  ')
    );
  }

  Future<Null> _handleRefresh() async{
    await _getPosts(refresh: true);
    return null;
  }







  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark),
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                // color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Container(
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/menu.svg",
                                    // color: Color(0xff651CE5),
                                    height: 50,
                                  ),
                                  SizedBox(width: 20),
                                  SvgPicture.asset(
                                    "assets/icons/notification.svg",
                                    height: 30,
                                  ),
                                  SizedBox(width: 20),
                                  SvgPicture.asset(
                                    "assets/icons/search.svg",
                                    height: 30,
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                width: 150,
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  // color: Colors.black.withOpacity(0.05),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Wrap(
                                      direction: Axis.horizontal,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(5.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  boxShadow: [
                                                    BoxShadow(
                                                      // color: Colors.grey
                                                      //     .withOpacity(0.5),
                                                      spreadRadius: 2,
                                                      blurRadius: 5,
                                                      offset: Offset(0,
                                                          3), // changes position of shadow
                                                    ),
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(50),
                                                  // color: Colors.white,
                                                ),
                                                height: 45,
                                                width: 45,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(2.0),
                                                  child: CircleAvatar(
                                                    backgroundImage: AssetImage(
                                                        'assets/images/avtar.jpg'),
                                                    radius: 25,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Text(
                                                "Alina",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  // color: Colors.black,
                                                  fontSize: 18,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 15),
                                              child: SvgPicture.asset(
                                                "assets/icons/tick.svg",
                                                height: 21,
                                                // color: Color(0xff00d289),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ...List.generate(
                        
                        _posts.length,
                        (index) {
                          // Map post = _posts[index];
                          return HomeCard(
                            posts: _posts[index],
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: CustomNavBar(
                  selectedMenu: MenuState.home,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
