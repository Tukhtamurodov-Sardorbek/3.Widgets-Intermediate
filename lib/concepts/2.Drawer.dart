import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:widgets_intermediate/source_code/sourceCode.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({Key? key}) : super(key: key);
  static const String id = 'drawer_page';

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// The color to use for the scrim that obscures primary content while a drawer is open.
      drawerScrimColor: Colors.white,
      /// Determines if the Scaffold.drawer can be opened with a drag gesture.
      /// By default, the drag gesture is enabled.
      drawerEnableOpenDragGesture: true,
      /// If set to DragStartBehavior.start, the drag behavior used for opening and closing a drawer will begin at the position where the drag gesture won the arena. If set to DragStartBehavior.down it will begin at the position where a down event is first detected.
      drawerDragStartBehavior: DragStartBehavior.down,
      /// Drawer open width
      drawerEdgeDragWidth: MediaQuery.of(context).size.width * 0.4,

      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: (){Navigator.pop(context);},
        ),
        title: const Text('Drawer', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.code, color: Colors.black),
            onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const SourceCode(carbon: 'assets/carbon/2.Drawer.png', url: 'https://carbon.now.sh/?bg=rgba%28171%2C+184%2C+195%2C+1%29&t=seti&wt=none&l=auto&width=680&ds=true&dsyoff=20px&dsblur=68px&wc=true&wa=true&pv=56px&ph=56px&ln=false&fl=1&fm=Hack&fs=14px&lh=133%25&si=false&es=2x&wm=false&code=import%2520%27package%253Aflutter%252Fgestures.dart%27%253B%250Aimport%2520%27package%253Aflutter%252Fmaterial.dart%27%253B%250A%250Aclass%2520DrawerPage%2520extends%2520StatefulWidget%2520%257B%250A%2520%2520const%2520DrawerPage%28%257BKey%253F%2520key%257D%29%2520%253A%2520super%28key%253A%2520key%29%253B%250A%2520%2520static%2520const%2520String%2520id%2520%253D%2520%27drawer_page%27%253B%250A%250A%2520%2520%2540override%250A%2520%2520_DrawerPageState%2520createState%28%29%2520%253D%253E%2520_DrawerPageState%28%29%253B%250A%257D%250A%250Aclass%2520_DrawerPageState%2520extends%2520State%253CDrawerPage%253E%2520%257B%250A%2520%2520%2540override%250A%2520%2520Widget%2520build%28BuildContext%2520context%29%2520%257B%250A%2520%2520%2520%2520return%2520Scaffold%28%250A%2520%2520%2520%2520%2520%2520%252F%252F%252F%2520The%2520color%2520to%2520use%2520for%2520the%2520scrim%2520that%2520obscures%2520primary%2520content%2520while%2520a%2520drawer%2520is%2520open.%250A%2520%2520%2520%2520%2520%2520drawerScrimColor%253A%2520Colors.white%252C%250A%2520%2520%2520%2520%2520%2520%252F%252F%252F%2520Determines%2520if%2520the%2520Scaffold.drawer%2520can%2520be%2520opened%2520with%2520a%2520drag%2520gesture.%250A%2520%2520%2520%2520%2520%2520%252F%252F%252F%2520By%2520default%252C%2520the%2520drag%2520gesture%2520is%2520enabled.%250A%2520%2520%2520%2520%2520%2520drawerEnableOpenDragGesture%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%252F%252F%252F%2520If%2520set%2520to%2520DragStartBehavior.start%252C%2520the%2520drag%2520behavior%2520used%2520for%2520opening%2520and%2520closing%2520a%2520drawer%2520%2520%2520%2520%2520%2520%2520%2520%2520will%2520begin%2520at%2520the%2520position%2520where%2520the%2520drag%2520gesture%2520won%2520the%2520arena.%2520If%2520set%2520to%2520DragStartBehavior.down%2520%2520%2520%2520%2520%2520%2520it%2520will%2520begin%2520at%2520the%2520position%2520where%2520a%2520down%2520event%2520is%2520first%2520detected.%250A%2520%2520%2520%2520%2520%2520drawerDragStartBehavior%253A%2520DragStartBehavior.down%252C%250A%2520%2520%2520%2520%2520%2520%252F%252F%252F%2520Drawer%2520open%2520width%250A%2520%2520%2520%2520%2520%2520drawerEdgeDragWidth%253A%2520MediaQuery.of%28context%29.size.width%2520*%25200.4%252C%250A%250A%2520%2520%2520%2520%2520%2520appBar%253A%2520AppBar%28%250A%2520%2520%2520%2520%2520%2520%2520%2520title%253A%2520const%2520Text%28%27Drawer%27%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520centerTitle%253A%2520true%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520body%253A%2520const%2520Center%28%250A%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Text%28%27Welcome%27%29%252C%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520drawer%253A%2520Drawer%28%250A%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Column%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520crossAxisAlignment%253A%2520CrossAxisAlignment.stretch%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520children%253A%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Container%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520padding%253A%2520const%2520EdgeInsets.all%2820%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520color%253A%2520Colors.grey%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520height%253A%2520200%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520child%253A%2520Column%28%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520crossAxisAlignment%253A%2520CrossAxisAlignment.start%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520mainAxisAlignment%253A%2520MainAxisAlignment.center%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520children%253A%2520const%2520%255B%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Text%28%27Fullname%27%252C%2520style%253A%2520TextStyle%28color%253A%2520Colors.white%252C%2520fontSize%253A%252020%29%252C%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520Text%28%27emailaddress%2540gmail.com%27%252C%2520style%253A%2520TextStyle%28color%253A%2520Colors.white%252C%2520fontSize%253A%252018%29%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%2520%2520%2520%2520%255D%252C%250A%2520%2520%2520%2520%2520%2520%2520%2520%29%250A%2520%2520%2520%2520%2520%2520%29%252C%250A%2520%2520%2520%2520%29%253B%250A%2520%2520%257D%250A%257D%250A')));},
          )
        ],
      ),
      body: const Center(
        child: Text('Drag'),
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.grey,
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Fullname', style: TextStyle(color: Colors.white, fontSize: 20),),
                  Text('emailaddress@gmail.com', style: TextStyle(color: Colors.white, fontSize: 18))
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
