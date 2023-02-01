import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freeu/HomePage/Chats/Model/ChatUserModel.dart';
import 'package:freeu/HomePage/Chats/Widgets/ConversationList.dart';
import 'package:freeu/HomePage/HomePage.dart';
import 'package:freeu/common/NavDrawer.dart';
import 'package:get/get.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  List<ChatUsers> chatUsers = [
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "assets/images/1.jpg",
      time: "Now",
    ),
    ChatUsers(
      name: "Glady's Murphy",
      messageText: "That's Great",
      imageURL: "assets/images/1.jpg",
      time: "Yesterday",
    ),
    ChatUsers(
      name: "Jorge Henry",
      messageText: "Hey where are you?",
      imageURL: "assets/images/1.jpg",
      time: "31 Mar",
    ),
    ChatUsers(
      name: "Philip Fox",
      messageText: "Busy! Call me in 20 mins",
      imageURL: "assets/images/1.jpg",
      time: "28 Mar",
    ),
    ChatUsers(
      name: "Debra Hawkins",
      messageText: "Thankyou, It's awesome",
      imageURL: "assets/images/1.jpg",
      time: "23 Mar",
    ),
    ChatUsers(
      name: "Jacob Pena",
      messageText: "will update you in evening",
      imageURL: "assets/images/1.jpg",
      time: "17 Mar",
    ),
    ChatUsers(
      name: "Andrey Jones",
      messageText: "Can you please share the file?",
      imageURL: "assets/images/1.jpg",
      time: "24 Feb",
    ),
    ChatUsers(
      name: "John Wick",
      messageText: "How are you?",
      imageURL: "assets/images/1.jpg",
      time: "18 Feb",
    ),
    ChatUsers(
      name: "Fany Wick",
      messageText: "Where are you?",
      imageURL: "assets/images/1.jpg",
      time: "20 Feb",
    ),
  ];

  void _selectedTab(int index) {
    setState(() {
      // _lastSelected = 'TAB: $index';
      // print(_lastSelected);

      switch (index) {
        case 0:
          {
            Get.toNamed("/homepage");
          }
          break;

        case 1:
          {
            Get.toNamed('/categoriesmain');
            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => SecurityFirst())));
          }
          break;

        case 2:
          {
            Get.toNamed('/investmentmain');
            // Navigator.push(context,
            //     MaterialPageRoute(builder: ((context) => SecurityQuestion())));
          }
          break;
        case 3:
          {
            Get.toNamed('/chatpage');
            // Navigator.push(
            //     context, MaterialPageRoute(builder: ((context) => Login())));
          }
          break;
        case 4:
          {
            Get.toNamed('/myprofile');
            // Navigator.push(
            //     context, MaterialPageRoute(builder: ((context) => SignUp())));
          }
          break;
        default:
          {
            throw Error();
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: Color(0xFFFFFBF0),
      drawer: NavDrawer(),
      appBar: AppBar(
        title: Text(
          'Chats',
          softWrap: true,
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 19,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 2,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                _key.currentState!.openDrawer();
              },
              icon: SvgPicture.asset("assets/images/menu.svg"),
              color: Colors.black,
              iconSize: 25,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.toNamed('/notificationpage');
            },
            icon: SvgPicture.asset(
              'assets/images/notification-bell-svgrepo-com.svg',
            ),
            iconSize: 22,
            color: const Color(0xFF303030),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: TextStyle(color: Colors.black),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedIconTheme: IconThemeData(color: Colors.grey),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/home-svgrepo-com.svg',
              height: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/category-alt-svgrepo-com.svg',
              height: 20,
            ),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/money-dollar-coin-svgrepo-com.svg',
              height: 20,
            ),
            label: 'Investments',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xFFFEEBBD),
              ),
              height: 20,
              width: 50,
              child: SvgPicture.asset(
                'assets/images/chat-left-3-svgrepo-com (2).svg',
                height: 20,
              ),
            ),
            icon: SvgPicture.asset(
              'assets/images/chat-left-3-svgrepo-com (2).svg',
              height: 20,
            ),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              height: 20,
              width: 50,
              color: Color(0xFFFEEBBD),
              child: SvgPicture.asset(
                'assets/images/profile.svg',
                height: 20,
              ),
            ),
            icon: SvgPicture.asset(
              'assets/images/profile.svg',
              height: 20,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: 3,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        onTap: (index) {
          print(index);
          _selectedTab(index);
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // CustomAppBarWithNotification(titleTxt: "Chats"),
                Padding(
                  padding: EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search...",
                      hintStyle: TextStyle(color: Colors.grey.shade600),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey.shade600,
                        size: 20,
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade200,
                      contentPadding: EdgeInsets.all(8),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.grey.shade100,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: Colors.grey.shade100,
                        ),
                      ),
                    ),
                  ),
                ),
                ListView.builder(
                  itemCount: chatUsers.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return ConversationList(
                      name: chatUsers[index].name,
                      messageText: chatUsers[index].messageText,
                      imageUrl: chatUsers[index].imageURL,
                      time: chatUsers[index].time,
                      isMessageRead: (index == 0 || index == 3 || index == 2)
                          ? true
                          : false,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
