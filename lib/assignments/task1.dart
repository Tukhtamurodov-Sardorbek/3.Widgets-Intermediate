import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TelegramLikeUI extends StatefulWidget {
  const TelegramLikeUI({Key? key}) : super(key: key);
  static const String id = 'telegram_like_ui';

  @override
  _TelegramLikeUIState createState() => _TelegramLikeUIState();
}

class _TelegramLikeUIState extends State<TelegramLikeUI> {
  List<Profile> profiles = [
    Profile(image: 'assets/profile_pictures/girls/girl1.jpg', name: 'Laurent', time: '20:18', message: 'How about meeting tomorrow?'),
    Profile(image: 'assets/profile_pictures/girls/girl2.jpg', name: 'Tracy', time: '19:22', message: 'I love that idea, it\'s great!'),
    Profile(image: 'assets/profile_pictures/girls/girl3.jpg', name: 'Claire', time: '14:34', message: 'I wasn\'t aware of that. Let me check'),

    Profile(image: 'assets/profile_pictures/boys/boy1.jpg', name: 'Joe', time: '11:05', message: 'Flutter just released 1.0 officially. Should I go for it?'),
    Profile(image: 'assets/profile_pictures/boys/boy2.jpg', name: 'Mark', time: '09:46', message: 'It totally makes sense to get some extra day-off'),
    Profile(image: 'assets/profile_pictures/boys/boy3.jpg', name: 'Williams', time: '08:15', message: 'It has been re-scheduled to next Saturday 7:30pm'),
  ];

  Map<Icon, String> _drawerList = {
    Icon(Icons.home) : 'Home',
    Icon(Icons.perm_identity_outlined) : 'Profile',
    Icon(Icons.people_outline) : 'About',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEdgeDragWidth: MediaQuery.of(context).size.width * 0.4,

      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Messages'),
        centerTitle: true,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: profiles.length,
          itemBuilder: (BuildContext context, int index){
            return _listTile(profiles[index]);
          },
        ),
      ),
      drawer: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10, bottom: 20),
                color: Colors.blue,
                height: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    CircleAvatar(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.white,
                      child: Text('M', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),),
                      radius: 35,
                    ),
                    SizedBox(height: 15),
                    Text('Michael Clerk', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),),
                    SizedBox(height: 4),
                    Text('Michael@gmail.com', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),),
                  ],
                ),
              ),
              Expanded(
                // height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index){
                      return _listTileDrawer(_drawerList.keys.toList()[index], _drawerList.values.toList()[index]);
                    }
                ),
              )
            ],
          )
      ),
    );
  }

  Widget _listTile(Profile profile){
    return ListTile(
      contentPadding: EdgeInsets.only(left: 10),
      minVerticalPadding: 10,
      leading: CircleAvatar(
        foregroundImage: AssetImage(profile.image),
        radius: 25,
      ),
      title: Row(
        children: [
          Text(profile.name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
          const SizedBox(width: 20),
          Text(profile.time, style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400))
        ],
      ),
      subtitle: Text(profile.message, style: TextStyle(fontSize: 14)),
      trailing: IconButton(
        padding: EdgeInsets.only(right: 10),
        alignment: Alignment.centerRight,
        icon: const Icon(Icons.arrow_forward_ios, size: 14),
        onPressed: () {},
      ),
    );
  }
  Widget _listTileDrawer(Icon icon, String title) {
    return MaterialButton(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: ListTile(
        // selectedColor: Colors.blue,
        // selectedTileColor: Colors.blue,
        textColor:  title == 'Home' ? Colors.blue : Colors.black,
        iconColor: title == 'Home' ? Colors.blue : Colors.grey,
        leading: icon,
        title: Text(title),
      ),
      onPressed: (){},
    );
  }
}

class Profile{
  late String image;
  late String name;
  late String time;
  late String message;

  Profile({required this.image, required this.name, required this.time, required this.message});
}